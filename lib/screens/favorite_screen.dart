import 'package:cook_app/components/meal_item.dart';
import 'package:cook_app/models/meal.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoritesMeals;

  const FavoriteScreen(this.favoritesMeals);
  @override
  Widget build(BuildContext context) {
    if (favoritesMeals.isEmpty) {
      return Center(
        child: Text('Nenhuma Refeição Favorita'),
      );
    } else {
      return ListView.builder(
        itemCount: favoritesMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoritesMeals[index]);
        },
      );
    }
  }
}
