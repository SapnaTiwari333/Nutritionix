import 'package:flutter/material.dart';

class BuildDetailPage extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String calories;
  final String ingredients;
  final String method;
  final int protein; // Change to int for percentage
  final int carbs;   // Change to int for percentage
  final int fats;    // Change to int for percentage

  const BuildDetailPage({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.calories,
    required this.ingredients,
    required this.method,
    required this.protein,
    required this.carbs,
    required this.fats,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imageUrl,
                  width: double.infinity,
                  height: 300, // Increased image height for better impact
                  fit: BoxFit.cover,
                ),
              ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title Section
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Oswaldsemibold',
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: Colors.deepOrangeAccent, // Custom color for standout
                      letterSpacing: 1.5, // Slight spacing for elegance
                    ),
                  ),
                  const SizedBox(height: 20), // Adjusted spacing for hierarchy

                  // Card Layout for Nutrition Info
                  buildCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildSectionTitle("NUTRITION PER SERVING", calories),
                        const SizedBox(height: 12),
                        // Nutrition Progress Bar
                        buildNutritionProgressBar(),
                        const SizedBox(height: 12),
                        // Nutrition values and labels
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildNutritionInfo("$protein g", "Protein"),
                            buildNutritionInfo("$carbs g", "Carbs"),
                            buildNutritionInfo("$fats g", "Fats"),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20), // Spacing between sections

                  // Card Layout for Ingredients
                  buildCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildSectionTitle("INGREDIENTS", ""),
                        const SizedBox(height: 8),
                        Text(
                          ingredients,
                          style: TextStyle(
                            fontFamily: 'fontmain',
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20), // Spacing between sections

                  // Card Layout for Method
                  buildCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildSectionTitle("METHOD", ""),
                        const SizedBox(height: 8),
                        Text(
                          method,
                          style: TextStyle(
                            fontFamily: 'fontmain',
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build a card with padding and shadow
  Widget buildCard({required Widget child}) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }

  // Helper method to build section title and optional value (e.g., calories)
  Widget buildSectionTitle(String title, String value) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Oswaldsemibold',
            fontSize: 20,
          //  fontWeight: FontWeight.w600,
            color: Colors.black87,
            letterSpacing: 1.2,
          ),
        ),
        Spacer(),
        if (value.isNotEmpty)
          Text(
            value,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),
      ],
    );
  }

  // Helper method to build the nutrition progress bar with gradient effect
  Widget buildNutritionProgressBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: protein,
            child: Container(
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  colors: [Colors.orange, Colors.deepOrange],
                ),
              ),
            ),
          ),
          Expanded(
            flex: carbs,
            child: Container(
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.lightBlueAccent],
                ),
              ),
            ),
          ),
          Expanded(
            flex: fats,
            child: Container(
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(
                  colors: [Colors.green, Colors.lightGreen],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build nutrition info (value and label)
  Widget buildNutritionInfo(String value, String label) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            letterSpacing: 1.2,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontFamily: 'fontmain',
            fontSize: 12,
            color: Colors.black45,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2
          ),
        ),
      ],
    );
  }
}
