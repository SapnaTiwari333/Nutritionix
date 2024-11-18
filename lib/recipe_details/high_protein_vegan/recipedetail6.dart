import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart'; // Ensure this import points to your buildDetailPage file

class RecipeDetail6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/img.png", // Update the image URL
      title: "Tofu and Edamame Stir-Fry", // Update the title
      calories: "450 cal", // Update the calorie information
      ingredients:
      "• 200 grams Tofu\n"
          "• 100 grams Edamame\n"
          "• 1 tablespoon Soy sauce\n"
          "• 1 clove Garlic\n"
          "• 1 tablespoon Vegetable oil", // Update ingredients
      method:
      "1. Stir-fry tofu until golden.\n"
          "2. Add vegetables and edamame.\n"
          "3. Season with soy sauce, garlic, and desired spices.\n"
          "4. Cook until vegetables are tender.", // Update the method

      protein: 25, // Update protein content
      carbs: 35, // Update carb content
      fats: 20, // Update fat content
    );
  }
}
