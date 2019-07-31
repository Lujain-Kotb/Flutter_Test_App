import 'package:flutter/material.dart';

class DrinkListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70.0,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(5.0),
        ),
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Icon(Icons.local_drink),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
                child: Text(
              'Beverage Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            Icon(Icons.navigate_next)
          ],
        ),
    );
  }
}
