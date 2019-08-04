import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'selected_product_configuration.dart';

class ProductConfigurationDrinkSizeTile extends StatelessWidget {
  final IconData drinkImage;
  final String size;
  final String price;
  final Color tileColor;

  void _selectedTile(BuildContext context, String size) {
    final currentConfig = Provider.of<SelectedConfiguration>(context);
    currentConfig.selectedDrink(size);
  }

  ProductConfigurationDrinkSizeTile(
      {this.drinkImage, this.size, this.price, this.tileColor});

  @override
  Widget build(BuildContext context) {
    //final currentConfig = Provider.of<SelectedConfiguration>(context);
    return GestureDetector(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Icon(drinkImage),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('$size'),
                    ),
                    Text('$price'),
                  ],
                ),
              ),
              color: tileColor,
            ),
            onTap: () => _selectedTile(context, size),
    );
  }
}
