import 'package:flutter/material.dart';
import 'package:nutritionix/recipe_details/recipedetails.dart';

class RecipeDetail3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BuildDetailPage(
      imageUrl: "assets/images/thai peanut chicken stir fry.png",
      title: "Chicken and Broccoli Stir Fry",
      calories: "580 cal",
      ingredients:
      "• 200 grams Chicken breast\n"
          "• 100 grams Broccoli\n"
          "• 100 grams Red bell pepper\n"
          "• 100 grams Carrot\n"
          "• 2 tablespoons Peanut butter\n"
          "• 1 tablespoon Soy sauce\n"
          "• 1 tablespoon Honey\n"
          "• 1 teaspoon Chili flakes",
      method:
      "1. Prepare the vegetables by washing and chopping.\n"
          "2. Cut chicken into bite-sized pieces.\n"
          "3. Heat oil in a pan over medium heat.\n"
          "4. Add chicken to the pan and cook until browned.\n"
          "5. Add vegetables and stir fry until tender.\n"
          "6. In a separate bowl, mix peanut butter, soy sauce, honey, and chili flakes.\n"
          "7. Pour the peanut sauce over the chicken and vegetables.\n"
          "8. Stir well to combine and cook for an additional 2-3 minutes.\n"
          "9. Serve hot with a side of rice or noodles.",
      protein: 35,
      carbs: 45,
      fats: 27,
    );
  }
}
