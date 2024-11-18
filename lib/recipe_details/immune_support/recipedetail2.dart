import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart'; // Ensure this import points to your buildDetailPage file

class RecipeDetail2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/panner high protein Salad.png", // Update the image URL
      title: "Paneer High Protein Salad", // Update the title
      calories: "350 cal", // Update the calorie information
      ingredients:
      "• 100 g Paneer\n"
          "• 5 ml Olive oil\n"
          "• 1 tbsp Lemon juice\n"
          "• 50 g Cucumber\n"
          "• 50 g Tomatoes\n"
          "• 50 g Red bell pepper\n"
          "• 0.5 tsp Salt\n"
          "• 0.5 tsp Black pepper", // Update ingredients
      method:
      "1. Combine paneer, cucumber, tomatoes, and red bell pepper in a bowl.\n"
          "2. Drizzle with olive oil and lemon juice.\n"
          "3. Season with salt and black pepper.\n"
          "4. Toss until evenly coated and serve chilled.", // Update the method

      protein: 22, // Update protein content
      carbs: 15, // Update carb content
      fats: 20, // Update fat content
    );
  }
}
