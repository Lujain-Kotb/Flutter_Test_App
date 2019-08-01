import 'package:flutter/material.dart';

import 'product_configuration_drink_size_tile.dart';
import 'drink_sizes.dart';

class ProductConfigurationDrinkSize extends StatefulWidget {
  var sizes = DrinkSizes.availableSizes;
  DrinkSize currentlySelectedSize; // this var needs to follow the provider package

  @override
  _ProductConfigurationDrinkSizeState createState() => _ProductConfigurationDrinkSizeState();
}

class _ProductConfigurationDrinkSizeState extends State<ProductConfigurationDrinkSize> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.currentlySelectedSize = widget.sizes[0];
    initSelection();
  }

void initSelection() {

}
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ... widget.sizes.map((cardInfo) => ProductConfigurationDrinkSizeTile(
      drinkImage: cardInfo.drinkIcon,
      size: cardInfo.size,
      price: cardInfo.isSelected? '✓' : cardInfo.price,
    )
        ).toList(),
      ],
    );
  }
}
