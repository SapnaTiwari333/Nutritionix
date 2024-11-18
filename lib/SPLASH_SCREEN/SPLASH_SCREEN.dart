import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nutritionix/DASHBOARD/bottomnavigation%20bar1.dart';
import 'package:nutritionix/SPLASH_SCREEN/animationpageview.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:nutritionix/DASHBOARD/dashboardscreen.dart';

import 'package:nutritionix/SPLASH_SCREEN/AppNameAnimation.dart';

void main(){
  runApp(flutterApp());
}

class flutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Flutter App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home:SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});  // Using super parameters

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateAfterDelay();
  }

  Future<void> navigateAfterDelay() async {
    // Wait for 3 seconds
    await Future.delayed(const Duration(seconds: 3));



    // Check login status from SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    // Ensure the widget is still mounted before navigating
    if (!mounted) return;

    // Navigate based on login status
    if (isLoggedIn) {
      // Navigate to Dashboard if logged in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  BottomNavigationWidget()),
      );
    } else {
      // Navigate to Signup screen if not logged in
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>const OnboardingScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue,
              Colors.purple,
            ],
          ),
        ),
        child: const Center(
          child: AppNameAnimation(),  // Reusing your animation widget
        ),
      ),
    );
  }
}
