import 'package:flutter/material.dart';

class ProductConfigurationDrinkType extends StatelessWidget {

  final String drinkName;

  ProductConfigurationDrinkType({this.drinkName});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
        color: Theme.of(context).primaryColor,
      ),
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Icon(Icons.local_drink),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
              child: Text(
                '$drinkName',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
          Text('0,00£')
        ],
      ),
    );
  }
}
