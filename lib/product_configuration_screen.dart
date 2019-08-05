import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

import 'topBar.dart';
import 'side_menu.dart';
import 'product_configuration_drink_type.dart';
import 'selected_product_configuration.dart';
import 'product_configuration_drink_size.dart';
import 'category_separator.dart';
import 'product_configuration_milk_size.dart';
import 'product_configuration_soy_milk_size.dart';
import 'product_configuration_extrashot_tile.dart';
import 'product_configuration_extras_title.dart';
import 'product_configuration_extras_table.dart';

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
                case 2:
                  return ProductConfigurationMilkSize();
                case 3:
                  return ProductConfigurationSoyMilkSize();
                case 4:
                  return ProductConfigurationExtrashotTile();
                case 5:
                  return ProductConfigurationExtrasTable();
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
                  return CategorySeparator(categoryIcon: Icons.fastfood, categoryName: 'Milch',);
                case 2:
                  return CategorySeparator(categoryIcon: Icons.fastfood, categoryName: 'Sojamilch',);
                  case 3:
                    return CategorySeparator(categoryIcon: Icons.fastfood, categoryName: 'Extrashot',);
                case 4:
                  return ProductConfigurationExtrasTitle();
                case 5:
                  return SizedBox(
                    height: 20.0,
                  );
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
