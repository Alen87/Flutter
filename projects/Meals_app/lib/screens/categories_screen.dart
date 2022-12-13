import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_item.dart';

// uzimamo listu podataka " DUMMY_CATEGORIES"
//  ,te podatke mapiramo u listu Widget-sa , koji  smo kreirali
//  u "category_item"
class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map((catData) => CategoryItem(
                catData.id,
                catData.title,
                catData.color,
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
