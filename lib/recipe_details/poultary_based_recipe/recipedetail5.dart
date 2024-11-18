import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart';

class RecipeDetail5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/grilled chicken and quinoa salad.png", // Update image path accordingly
      title: "Grilled Chicken Quinoa Salad",
      calories: "560 cal", // Updated based on the new image
      ingredients:
      "• 200 g Chicken breast\n"
          "• 1 cup Quinoa\n"
          "• 2 cups Mixed greens\n"
          "• 1 tablespoon Olive oil\n"
          "• 1 tablespoon Lemon juice\n"
          "• 1 cup Vegetables (tomatoes, cucumbers, bell peppers)",
      method:
      "1. Marinate chicken breast in olive oil, lemon juice, salt, and pepper.\n"
          "2. Grill chicken until fully cooked.\n"
          "3. Cook quinoa as per package instructions.\n"
          "4. Chop vegetables of your choice.\n"
          "5. Mix greens, quinoa, vegetables, and sliced grilled chicken.\n"
          "6. Drizzle with olive oil and lemon juice dressing.\n"
          "7. Serve immediately or chill in the refrigerator.",
      protein: 52,
      carbs: 44,
      fats: 18,
    );
  }
}
