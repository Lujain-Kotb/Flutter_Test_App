import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'selected_product_configuration.dart';

class ProductConfigurationExtrashotTile extends StatelessWidget {
  void _selectedTile(BuildContext context) {
    final currentConfig = Provider.of<SelectedConfiguration>(context);
    currentConfig.setSelectedExtraShot(!currentConfig.selectedExtraShot);
  }

  @override
  Widget build(BuildContext context) {
    final currentConfig = Provider.of<SelectedConfiguration>(context);
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Text('M / L / XL / XXL'),
              SizedBox(height: 10.0,),
              Text('£0,00'),
            ],
          ),
        ),
        color: currentConfig.selectedExtraShot
            ? Theme.of(context).primaryColor
            : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Theme.of(context).primaryColor, width: 1.0),
        ),
      ),
      onTap: () => _selectedTile(context),
    );
  }
}
