import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widegets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foods App'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 50,
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 30,
          mainAxisExtent: 100,
        ),
        children: dummyCategories
            .map(
              (catData) => CategoryItem(
                  title: catData.title, id: catData.id, color: catData.color),
            )
            .toList(),
      ),
    );
  }
}
