import 'package:flutter/material.dart';

import '../screens/categories_meals_screens.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key, required this.title, required this.color, required this.id});
  final String title;
  final String id;
  final Color color;

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoriesMealsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
