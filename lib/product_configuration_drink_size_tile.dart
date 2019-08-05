import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'selected_product_configuration.dart';

class ProductConfigurationDrinkSizeTile extends StatelessWidget {
  final IconData drinkImage;
  final String size;
  final String price;

  void _selectedTile(BuildContext context, String size) {
    final currentConfig = Provider.of<SelectedConfiguration>(context);
    currentConfig.setSelectedDrink(size);
  }

  ProductConfigurationDrinkSizeTile(
      {this.drinkImage, this.size, this.price});

//  price: cardInfo.size == selectionData.selectedDrink
//  ? '✓'
//      : cardInfo.price,
//  tileColor: cardInfo.size == selectionData.selectedDrink
//  ? Theme.of(context).primaryColor
//      : Colors.white,

  @override
  Widget build(BuildContext context) {
    final currentConfig = Provider.of<SelectedConfiguration>(context);
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
                    size == currentConfig.selectedDrink
                        ? Text('✓'): Text('$price'),
                  ],
                ),
              ),
              color: size == currentConfig.selectedDrink
                  ? Theme.of(context).primaryColor
                  : Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0), side: BorderSide(color: Theme.of(context).primaryColor, width: 1.0), ),
            ),
            onTap: () => _selectedTile(context, size),
    );
  }
}
