import 'package:flutter/material.dart';

class AppNameAnimation extends StatefulWidget {
  const AppNameAnimation({super.key});
  @override
  AppNameAnimationState createState() => AppNameAnimationState();
}

class AppNameAnimationState extends State<AppNameAnimation> with TickerProviderStateMixin {
  List<AnimationController> controllers = [];
  List<Animation<double>> sizeAnimations = [];
  List<Animation<Color?>> colorAnimations = [];

  final String appName = "Nutritionix"; // The app name

  @override
  void initState() {
    super.initState();

    // Initialize AnimationControllers and Animations for each letter
    for (int i = 0; i < appName.length; i++) {
      final controller = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 600),  // Animation duration
      );

      // Animation to increase and then decrease the size of the letter
      final sizeAnimation = Tween<double>(begin: 1.0, end: 1.5).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeInOut),
      );

      // Animation to change the color of the letter
      final colorAnimation = ColorTween(begin: Colors.redAccent, end: Colors.black45).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeInOut),
      );

      // Store the controllers and animations
      controllers.add(controller);
      sizeAnimations.add(sizeAnimation);
      colorAnimations.add(colorAnimation);

      // Start animation with delay for each letter
      Future.delayed(Duration(milliseconds: i * 200), () {
        controller.forward();
        controller.addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            controller.reverse();  // Reverse animation after completion
          }
        });
      });
    }
  }

  @override
  void dispose() {
    // Dispose of all animation controllers
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(appName.length, (index) {
        return AnimatedBuilder(
          animation: controllers[index],
          builder: (context, child) {
            return Transform.scale(
              scale: sizeAnimations[index].value,  // Animate the size
              child: Text(
                appName[index],  // Display each letter
                style: TextStyle(
                  fontSize: 70, // Base font size
                  fontWeight: FontWeight.bold,
                  color: colorAnimations[index].value,  // Animate the color
                ),
              ),
            );
          },
        );
      }),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable debug banner
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueAccent, Colors.orange], // Gradient background color
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: AppNameAnimation(),
          ),
        ),
      ),
    );
  }
}
