import 'package:flutter/material.dart';

import 'topBar.dart';
import 'drink_list_tile.dart';
import 'side_menu.dart';
import 'product_configuration_screen.dart';

class BeveragesScreen extends StatelessWidget {
  static const BeverageList = [
    'Espresso',
    'Kaffee',
    'Cappuccino',
    'Latte Macchiato',
    'Milchkaffee',
    'Espresso Macchiato',
    'Chociatto',
    'Heiße Schokolade',
    'Tee',
    'Grüner Tee'
  ];

  void _onBeverageSelection(BuildContext context, String selectedDrink) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ProductConfigurationScreen(
                  selectedDrink: selectedDrink,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(stepPosition: 0),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.transparent,
        ),
        child: Drawer(
          child: SideMenu(),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10.0),
        itemBuilder: (context, position) => DrinkListTile(
              beverageName: BeverageList[position],
              onTapAction: _onBeverageSelection,
            ),
        itemCount: 10,
        //separatorBuilder:(context, position) => SizedBox(height: 5.0,) ,
      ),
    );
  }
}
