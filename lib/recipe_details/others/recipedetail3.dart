import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart'; // Ensure this import points to your buildDetailPage file

class RecipeDetail3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/chickenpea.png", // Update the image URL
      title: "Chickpea and Spinach Curry", // Update the title
      calories: "250 cal", // Update the calorie information
      ingredients:
      "• 1 cup Chickpeas\n"
          "• 1 cup Spinach\n"
          "• 1 cup Tomato sauce", // Update ingredients
      method:
      "1. Saute onions, add spices, and tomatoes.\n"
          "2. Add chickpeas and spinach.\n"
          "3. Simmer until flavors meld.", // Update the method

      protein: 9, // Update protein content
      carbs: 35, // Update carb content
      fats: 8, // Update fat content
    );
  }
}
