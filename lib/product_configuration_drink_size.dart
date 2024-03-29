import 'package:flutter/material.dart';

import 'product_configuration_drink_size_tile.dart';
import 'drink_sizes.dart';

class ProductConfigurationDrinkSize extends StatelessWidget {
  var sizes = DrinkSizes.availableSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ...sizes
            .map(
              (cardInfo) =>
              Expanded(
                child: ProductConfigurationDrinkSizeTile(
                  drinkImage: cardInfo.drinkIcon,
                  size: cardInfo.size,
                  price:  cardInfo.price,
                ),
              ),
        )
            .toList(),
      ],
    );
  }
}

