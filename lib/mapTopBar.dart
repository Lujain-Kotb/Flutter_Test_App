import 'package:flutter/material.dart';

class MapTopBar extends StatelessWidget with PreferredSizeWidget {


  @override
  Widget build(BuildContext context) {
    return AppBar(
     backgroundColor: Colors.white,
      leading: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      title: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
        ),
      ),
      actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.search),
          )
        ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
