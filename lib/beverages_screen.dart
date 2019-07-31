import 'package:flutter/material.dart';

import 'topBar.dart';
import 'drink_list_tile.dart';
import 'side_menu.dart';

class BeveragesScreen extends StatelessWidget {
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
        itemBuilder: (context, position) => DrinkListTile(),
        itemCount: 10,
        //separatorBuilder:(context, position) => SizedBox(height: 5.0,) ,
      ),
    );
  }
}
