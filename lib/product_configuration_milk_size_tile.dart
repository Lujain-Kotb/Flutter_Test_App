import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'selected_product_configuration.dart';

class ProductConfigurationMilkSizeTile extends StatelessWidget {
  final String size;
  final String price;

  void _selectedTile(BuildContext context, String size) {
    final currentConfig = Provider.of<SelectedConfiguration>(context);
    currentConfig.setSelectedMilkSize(size);
  }

  ProductConfigurationMilkSizeTile({this.size, this.price});

  @override
  Widget build(BuildContext context) {
    final currentConfig = Provider.of<SelectedConfiguration>(context);
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Text('$size'),
              size == currentConfig.selectedMilkSize ? Text('✓') : Text('$price'),
            ],
          ),
        ),
        color: size == currentConfig.selectedMilkSize ? Theme.of(context).primaryColor : Colors.white,
      ),
      onTap: () => _selectedTile(context, size),
    );
  }
}
