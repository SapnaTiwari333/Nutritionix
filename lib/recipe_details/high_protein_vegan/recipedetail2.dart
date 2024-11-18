import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart'; // Ensure this import points to your buildDetailPage file

class RecipeDetail2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/scramble.png", // Update the image URL
      title: "Tofu Scramble with Spinach and Tomatoes", // Update the title
      calories: "250 cal", // Update the calorie information
      ingredients:
      "• 200 grams Tofu\n"
          "• 100 grams Spinach\n"
          "• 100 grams Tomatoes\n"
          "• 3 grams Turmeric", // Update ingredients
      method:
      "1. Crumble the tofu and cook with turmeric.\n"
          "2. Add spinach and tomatoes.\n"
          "3. Cook until well combined and spinach is wilted.", // Update the method

      protein: 18, // Update protein content
      carbs: 15, // Update carb content
      fats: 12, // Update fat content
    );
  }
}
