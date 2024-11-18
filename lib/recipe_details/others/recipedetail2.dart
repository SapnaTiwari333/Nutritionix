import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart'; // Ensure this import points to your buildDetailPage file

class RecipeDetail2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/tofu.png", // Update the image URL
      title: "Vegetable Stir Fry with Tofu", // Update the title
      calories: "360 cal", // Update the calorie information
      ingredients:
      "• 1 cup Tofu\n"
          "• 2 cups Mixed vegetables\n"
          "• 2 tablespoons Stir-fry sauce\n"
          "• 1 tablespoon Oil", // Update ingredients
      method:
      "1. Stir-fry tofu and vegetables in a wok with oil.\n"
          "2. Add sauce and cook until vegetables are tender.", // Update the method

      protein: 21, // Update protein content
      carbs: 35, // Update carb content
      fats: 16, // Update fat content
    );
  }
}
