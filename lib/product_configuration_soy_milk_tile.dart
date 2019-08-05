import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'selected_product_configuration.dart';


class ProductConfigurationSoyMilkTile extends StatelessWidget {
  final String size;
  final String price;
  final shouldBeResponsive = true;

  void _selectedTile(BuildContext context, String size) {
    final currentConfig = Provider.of<SelectedConfiguration>(context);
    currentConfig.setSelectedSoyMilkSize(size);
  }

  ProductConfigurationSoyMilkTile({this.size, this.price});

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
              size == currentConfig.selectedSoyMilkSize ? Text('✓') : Text('$price'),
            ],
          ),
        ),
        color: size == currentConfig.selectedSoyMilkSize ? Theme.of(context).primaryColor : Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0), side: BorderSide(color: Theme.of(context).primaryColor, width: 1.0), ),
      ),
      onTap: () => shouldBeResponsive ? _selectedTile(context, size) : null,
    );
  }
}
