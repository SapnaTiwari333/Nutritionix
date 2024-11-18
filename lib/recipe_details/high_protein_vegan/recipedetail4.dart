import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart'; // Ensure this import points to your buildDetailPage file

class RecipeDetail4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/black beans.png", // Update the image URL
      title: "Chicken Bowl", // Update the title
      calories: "560 cal", // Update the calorie information
      ingredients:
      "• 150 grams Chicken breast\n"
          "• 0.5 cup Black beans\n"
          "• 1 cup Brown rice\n"
          "• 1 whole Avocado\n"
          "• 0.25 cup Shredded cheese\n"
          "• 2 tablespoons Salsa\n"
          "• 1 whole Lime", // Update ingredients
      method:
      "1. Season the chicken with salt, pepper, and cumin.\n"
          "2. Grill the chicken until fully cooked.\n"
          "3. Prepare the rice according to package instructions.\n"
          "4. Warm the black beans with their liquid in a pot over medium heat.\n"
          "5. Assemble the bowl with a base of rice, topped with black beans, sliced chicken, avocado, cheese, salsa, and lime.\n"
          "6. Serve immediately.", // Update the method

      protein: 43, // Update protein content
      carbs: 71, // Update carb content
      fats: 12, // Update fat content
    );
  }
}
