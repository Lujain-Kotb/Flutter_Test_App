import 'package:flutter/material.dart';
import 'drink_sizes.dart';
import 'product_configuration_second_extras_tile.dart';


class ProductConfigurationSecondExtrasRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var sizes = DrinkSizes.availableSizes;
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ...sizes
            .map(
              (cardInfo) =>
              Expanded(
                child: ProductConfigurationSecondExtrasTile(
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