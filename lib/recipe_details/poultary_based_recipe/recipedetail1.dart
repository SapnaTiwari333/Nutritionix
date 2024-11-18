import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart'; // Ensure this import points to your buildDetailPage file

class RecipeDetail1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/grilled chicken salad.png",
      title: "GRILLED CHICKEN SALAD",
      calories: "500 cal",
      ingredients:
      "• 150g Chicken breast\n"
          "• 2 cups Mixed greens\n"
          "• 1 cup Cherry tomatoes\n"
          "• 0.5 cup Cucumber\n"
          "• 1 tablespoon Vinaigrette dressing",
      method:
      "1. Grill seasoned chicken breast until fully cooked.\n"
          "2. Toss with mixed greens, cherry tomatoes, cucumber, and a light vinaigrette dressing.\n"
          "3. Serve immediately.",

      protein: 52,
      carbs: 10,
      fats: 22,
    );
  }
}
