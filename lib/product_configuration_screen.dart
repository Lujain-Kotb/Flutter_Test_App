import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

import 'topBar.dart';
import 'side_menu.dart';
import 'product_configuration_drink_type.dart';
import 'selected_product_configuration.dart';
import 'product_configuration_drink_size.dart';

class ProductConfigurationScreen extends StatelessWidget {
  final String selectedDrink;

  ProductConfigurationScreen({this.selectedDrink});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => SelectedConfiguration(),
      child: Scaffold(
        appBar: TopBar(stepPosition: 1),
        drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
          child: Drawer(
            child: SideMenu(),
          ),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return ProductConfigurationDrinkType(drinkName: selectedDrink);
                case 1:
                  return ProductConfigurationDrinkSize();
                default:
                  break;
              }

            },
            separatorBuilder: (context, index) {
              switch (index) {
                case 0:
                  return SizedBox(
                    height: 20.0,
                  );
                case 1:
                  return SizedBox(height: 20.0);
                default:
                  break;
              }
            },
            itemCount: 6,
        ),
      ),
    );
  }
}
