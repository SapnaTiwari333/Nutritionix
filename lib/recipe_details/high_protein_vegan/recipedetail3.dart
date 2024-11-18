import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart'; // Ensure this import points to your buildDetailPage file

class RecipeDetail3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/soya.png", // Update the image URL
      title: "Soya Chunks and Chickpeas Salad", // Update the title
      calories: "350 cal", // Update the calorie information
      ingredients:
      "• 100 grams Soya chunks\n"
          "• 100 grams Chickpeas\n"
          "• 100 grams Cucumber\n"
          "• 100 grams Tomatoes\n"
          "• 100 grams Onions\n"
          "• 10 ml Olive oil\n"
          "• 30 ml Lemon juice", // Update ingredients
      method:
      "1. Soak soya chunks in hot water for 15 minutes. Drain and squeeze out excess water.\n"
          "2. Boil chickpeas or use canned chickpeas.\n"
          "3. Chop cucumber, tomatoes, and onions into small pieces.\n"
          "4. In a large bowl, combine soya chunks, chickpeas, and chopped vegetables.\n"
          "5. For the dressing, whisk olive oil, lemon juice, salt, pepper, and any herbs.\n"
          "6. Pour the dressing over the salad and mix well.\n"
          "7. Garnish with fresh coriander and serve.", // Update the method

      protein: 22, // Update protein content
      carbs: 45, // Update carb content
      fats: 8, // Update fat content
    );
  }
}
