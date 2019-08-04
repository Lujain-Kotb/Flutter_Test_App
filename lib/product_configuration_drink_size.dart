import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'product_configuration_drink_size_tile.dart';
import 'drink_sizes.dart';
import 'selected_product_configuration.dart';

class ProductConfigurationDrinkSize extends StatefulWidget {
  var sizes = DrinkSizes.availableSizes;
  DrinkSize
      currentlySelectedSize; // this var needs to follow the provider package

  @override
  _ProductConfigurationDrinkSizeState createState() =>
      _ProductConfigurationDrinkSizeState();
}

class _ProductConfigurationDrinkSizeState
    extends State<ProductConfigurationDrinkSize> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.currentlySelectedSize = widget.sizes[0];
    initSelection();
  }

  void initSelection() {}

  @override
  Widget build(BuildContext context) {
    final selectionData = Provider.of<SelectedConfiguration>(context);
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ...widget.sizes
            .map(
              (cardInfo) => Expanded(
                    child: ProductConfigurationDrinkSizeTile(
                      drinkImage: cardInfo.drinkIcon,
                      size: cardInfo.size,
                      price: cardInfo.size == selectionData.selectedDrink
                          ? '✓'
                          : cardInfo.price,
                      tileColor: cardInfo.size == selectionData.selectedDrink
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                    ),
                  ),
            )
            .toList(),
      ],
    );
  }
}
