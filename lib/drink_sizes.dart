import 'package:flutter/material.dart';

class DrinkSizes {

  static var availableSizes = [
    DrinkSize(Icons.local_drink, 'M', 'price'),
    DrinkSize(Icons.local_drink, 'L', 'price'),
    DrinkSize(Icons.local_drink, 'XL', 'price'),
    DrinkSize(Icons.local_drink, 'XXL', 'price'),
  ];
}


class DrinkSize {
  IconData drinkIcon;
  String size;
  String price;
  bool isSelected = false;

  DrinkSize(this.drinkIcon, this.size, this.price, [this.isSelected]);
}