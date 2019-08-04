import 'package:flutter/material.dart';

import 'drink_sizes.dart';
import 'package:german_flutter_app/product_configuration_milk_size_tile.dart';

class ProductConfigurationMilkSize extends StatelessWidget {
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
                child: ProductConfigurationMilkSizeTile(
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
