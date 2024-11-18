import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart'; // Ensure this import points to your buildDetailPage file

class RecipeDetail1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/spinach.png", // Update the image URL
      title: "Spinach and Ricotta Stuffed Shells", // Update the title
      calories: "420 cal", // Update the calorie information
      ingredients:
      "• 4 pieces Pasta shells\n"
          "• 0.5 cup Ricotta cheese\n"
          "• 1 cup Spinach\n"
          "• 0.5 cup Marinara sauce\n"
          "• 0.25 cup Mozzarella cheese", // Update ingredients
      method:
      "1. Fill boiled pasta shells with the spinach and ricotta mixture.\n"
          "2. Place in a baking dish.\n"
          "3. Cover with sauce and cheese.\n"
          "4. Bake until bubbly.", // Update the method

      protein: 19, // Update protein content
      carbs: 47, // Update carb content
      fats: 18, // Update fat content
    );
  }
}
