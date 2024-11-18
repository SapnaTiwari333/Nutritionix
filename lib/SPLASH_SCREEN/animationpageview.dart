import 'package:flutter/material.dart';
import 'package:nutritionix/LOGINPAGE/login_page.dart';
import 'package:nutritionix/SIGNUPPAGE/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    // Automatically change pages every few seconds
    startAutoPlay();
  }

  void startAutoPlay() {
    Future.delayed(const Duration(seconds: 4), () {
      if (currentPage < 3) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      startAutoPlay();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
            children: [
              buildPage(
                image: 'assets/images/img_3.png',
                title: 'Track your meals with\none click',
              ),
              buildPage(
                image: 'assets/images/img_3.png',
                title: 'Get personalized\nnutrition advice',
              ),
              buildPage(
                image: 'assets/images/img_3.png',
                title: 'Analyze your food intake\neasily',
              ),
              buildPage(
                image: 'assets/images/img_3.png',
                title: 'Reach your fitness goals\nfaster',
              ),
            ],
          ),
          // Positioned content (Signup and Signin buttons)
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Column(
              children: [
                buildGradientButton('SIGNUP', () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => Signuppage()),
                  );
                }),
                const SizedBox(height: 40),
                buildGradientButton('SIGNIN', () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => Loginpage()),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to create each page
  Widget buildPage({required String image, required String title}) {
    return Stack(
      children: [
        // Background Image
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Dark overlay for better text contrast
        Container(
          color: Colors.black.withOpacity(0.4),
        ),
        // Text on top of the image
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // Helper method to create gradient buttons
  // Helper method to create gradient buttons with updated style
  Widget buildGradientButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero, // No padding, handled inside Ink widget
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50), // More rounded corners
        ),
        elevation: 8, // Slight elevation for a floating effect
        shadowColor: Colors.blueAccent.withOpacity(0.4), // Soft shadow color
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.purple, Colors.blueAccent], // New gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(50), // Ensure the rounded corners
        ),
        child: Container(
          padding:const  EdgeInsets.symmetric(horizontal: 60, vertical: 20),
          // Larger padding for a bigger button
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20, // Slightly larger font size
              fontWeight: FontWeight.w600, // Semi-bold text
              letterSpacing: 1.5, // Spacing between letters for a modern feel
            ),
          ),
        ),
      ),
    );
  }
}
