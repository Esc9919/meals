import 'package:flutter/material.dart';
import 'package:meals/components/meal_item.dart';

import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeaals;
  const FavoriteScreen(this.favoriteMeaals, {super.key});

  @override
  Widget build(BuildContext context) {
    if (favoriteMeaals.isEmpty) {
      return const Center(
        child: Text('Nenhuma refeição foi marcada como favorita!'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeaals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteMeaals[index]);
        },
      );
    }
  }
}
