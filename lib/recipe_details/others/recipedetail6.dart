import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart'; // Ensure this import points to your buildDetailPage file

class RecipeDetail6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/eggwhite.png", // Update the image URL
      title: "Egg White and Spinach Omelette", // Update the title
      calories: "150 cal", // Update the calorie information
      ingredients:
      "• 4 large Egg Whites\n"
          "• 1 cup Spinach", // Update ingredients
      method:
      "1. Whisk egg whites and pour into a non-stick pan.\n"
          "2. Add spinach and cook until wilted.\n"
          "3. Fold the omelette and serve.", // Update the method

      protein: 20, // Update protein content
      carbs: 3, // Update carb content
      fats: 5, // Update fat content
    );
  }
}
