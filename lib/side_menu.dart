import 'package:flutter/material.dart';

import 'user_profile_card.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        children: <Widget>[
          UserProfileCard(),
          SizedBox(
            height: 30.0,
          ),
          ListView.separated(
            itemBuilder: (context, index) {
              return Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Menu Item $index',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ));
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 15.0);
            },
            itemCount: 4,
            shrinkWrap: true,
          )
        ],
      ),
    );
  }
}
