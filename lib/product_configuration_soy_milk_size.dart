import 'package:flutter/material.dart';

import 'drink_sizes.dart';
import 'product_configuration_soy_milk_tile.dart';

class ProductConfigurationSoyMilkSize extends StatelessWidget {

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
                child: ProductConfigurationSoyMilkTile(
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