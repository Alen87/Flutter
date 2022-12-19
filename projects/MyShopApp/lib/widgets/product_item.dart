// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(
    this.id,
    this.title,
    this.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        child: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
            color: Theme.of(context).colorScheme.secondary,
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            ProductDetailScreen.routeName,
            arguments: id,
          );
        },
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
