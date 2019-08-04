import 'package:flutter/material.dart';

class CategorySeparator extends StatelessWidget {
  final IconData categoryIcon;
  final String categoryName;

  CategorySeparator({this.categoryIcon, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:20.0, bottom: 10.0, left: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(categoryIcon),
          SizedBox(width: 8.0,),
          Expanded(
            child: Text('$categoryName', style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
