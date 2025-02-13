import 'package:flutter/material.dart';
import 'package:meals/components/category_item.dart';
import 'package:meals/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((cat) {
          return CategoryItem(cat);
        }).toList(),
      );
  }
}



// Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Vamos Cozinhar?",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Theme.of(context).primaryColor,
//       ),
//       backgroundColor: Theme.of(context).canvasColor,
//       body: 