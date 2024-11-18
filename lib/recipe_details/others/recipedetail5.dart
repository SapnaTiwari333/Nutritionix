import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart'; // Ensure this import points to your buildDetailPage file

class RecipeDetail5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/butternut squash soup.png", // Update the image URL
      title: "Butternut Squash Soup", // Update the title
      calories: "150 cal", // Update the calorie information
      ingredients:
      "• 1 cup Butternut Squash\n"
          "• 1 medium Onion\n"
          "• 1 clove Garlic\n"
          "• Vegetable stock (to taste)", // Update ingredients
      method:
      "1. Roast butternut squash until tender.\n"
          "2. Blend with sautéed onions, garlic, and vegetable stock.\n"
          "3. Season to taste.", // Update the method

      protein: 2, // Update protein content
      carbs: 35, // Update carb content
      fats: 3, // Update fat content
    );
  }
}
