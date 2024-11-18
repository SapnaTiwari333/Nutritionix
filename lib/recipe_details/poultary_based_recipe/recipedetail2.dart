import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart';

class RecipeDetail2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/chicken and broccoli stir fry.png",
      title: "Chicken and Broccoli Stir Fry",
      calories: "300 cal",
      ingredients:
      "• 100 grams Chicken breast\n"
          "• 100 grams Broccoli\n"
          "• 1 tablespoon Soy sauce\n"
          "• 1 clove Garlic\n"
          "• 1 tablespoon Olive oil",
      method:
      "1. Stir fry chicken pieces until cooked, add broccoli and sauce, cook until broccoli is tender.",

      protein: 35,
      carbs: 20,
      fats: 10,
    );
  }
}
