import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart';

class RecipeDetail4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/broccoli and chicken casser.png", // Update image path accordingly
      title: "Chicken Broccoli Casserole",
      calories: "500 cal", // Updated based on the new image
      ingredients:
      "• 2 cups Broccoli\n"
          "• 1 lb Chicken breast\n"
          "• 1 cup Low-fat cream of mushroom soup\n"
          "• 0.5 cup Skim milk\n"
          "• 0.5 cup Low-fat cheddar cheese\n"
          "• 0.25 cup Breadcrumbs",
      method:
      "1. Preheat oven to 375°F (190°C).\n"
          "2. Cook 2 cups of broccoli florets in boiling water for 3 minutes, then drain.\n"
          "3. In a skillet, cook 1 lb of diced chicken breast until browned.\n"
          "4. In a separate bowl, mix 1 cup of low-fat cream of mushroom soup with 1/2 cup of skim milk and 1/2 cup of shredded low-fat cheddar cheese.\n"
          "5. Combine chicken, broccoli, and soup mixture in a casserole dish.\n"
          "6. Top with 1/4 cup of breadcrumbs and bake for 25 minutes until bubbly and golden.",
      protein: 35,
      carbs: 35,
      fats: 22,
    );
  }
}
