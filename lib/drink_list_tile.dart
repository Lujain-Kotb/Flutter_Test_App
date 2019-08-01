import 'package:flutter/material.dart';

class DrinkListTile extends StatelessWidget {
  final String beverageName;
  Function onTapAction;

  DrinkListTile({
    this.beverageName,
    this.onTapAction(BuildContext context, String beverageName),
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapAction(context, beverageName),
      child: Container(
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
              '$beverageName',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            Icon(Icons.navigate_next)
          ],
        ),
      ),
    );
  }
}
