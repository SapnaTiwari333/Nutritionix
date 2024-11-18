import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart'; // Ensure this import points to your buildDetailPage file

class RecipeDetail4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/mushroom.png", // Update the image URL
      title: "Mushroom and Zucchini Lasagna", // Update the title
      calories: "320 cal", // Update the calorie information
      ingredients:
      "• 2 medium Zucchini\n"
          "• 1 cup Mushrooms\n"
          "• 1 cup Mozzarella cheese\n"
          "• Tomato sauce (to taste)", // Update ingredients
      method:
      "1. Layer grilled zucchini with sautéed mushrooms, cheese, and tomato sauce.\n"
          "2. Bake until bubbly.", // Update the method

      protein: 22, // Update protein content
      carbs: 28, // Update carb content
      fats: 15, // Update fat content
    );
  }
}
