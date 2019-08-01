import 'package:flutter/material.dart';

class ProductConfigurationDrinkSizeTile extends StatelessWidget {
  final IconData drinkImage;
  final String size;
  final String price;

  ProductConfigurationDrinkSizeTile({this.drinkImage, this.size, this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Icon(drinkImage),
          Text('$size'),
          Text('$price'),
        ],
      ),
    );
  }
}
