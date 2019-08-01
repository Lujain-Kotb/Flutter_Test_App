import 'package:flutter/material.dart';

import 'topBar.dart';
import 'side_menu.dart';
import 'product_configuration_drink_type.dart';

class ProductConfigurationScreen extends StatelessWidget {

  final String selectedDrink;

  ProductConfigurationScreen({this.selectedDrink});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(stepPosition: 1),
      drawer: Theme(
      data:Theme.of(context).copyWith(
        canvasColor: Colors.transparent
      ),
        child: Drawer(
          child: SideMenu(),
        ),
      ),
      body: ListView.separated(itemBuilder: (context, index){
        switch (index) {
          case 1:
            return ProductConfigurationDrinkType(drinkName: selectedDrink);
        }
      }, separatorBuilder: (context, index){

        switch (index) {
          case 1:
            return SizedBox(height: 20.0,);
        }

      }, itemCount: 6),
      // ProductConfigurationDrinkType(drinkName: selectedDrink),
    );
  }
}
