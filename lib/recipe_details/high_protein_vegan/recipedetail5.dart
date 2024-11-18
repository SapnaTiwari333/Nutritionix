import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart'; // Ensure this import points to your buildDetailPage file

class RecipeDetail5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/pork.png", // Update the image URL
      title: "Pork and Broccoli Stir-Fry", // Update the title
      calories: "320 cal", // Update the calorie information
      ingredients:
      "• 100 grams Pork loin\n"
          "• 100 grams Broccoli\n"
          "• 2 tablespoons Stir-fry sauce\n"
          "• 1 tablespoon Vegetable oil", // Update ingredients
      method:
      "1. Heat oil in a pan over medium-high heat, add pork strips and cook until browned.\n"
          "2. Add broccoli and stir-fry sauce.\n"
          "3. Cook until broccoli is tender and pork is cooked through.", // Update the method

      protein: 35, // Update protein content
      carbs: 12, // Update carb content
      fats: 16, // Update fat content
    );
  }
}
