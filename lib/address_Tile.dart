import 'package:flutter/material.dart';

class AddressTile extends StatelessWidget {
   final Function onAddressTap;

   AddressTile({@required this.onAddressTap});

  @override
  Widget build(BuildContext context) {

      return Card(
        //margin: EdgeInsets.all(10.0),
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: InkWell(
          splashColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10.0),
          onTap: onAddressTap,
          child: Container(
            height: 100,
//        decoration: BoxDecoration(
//          borderRadius: BorderRadius.circular(10.0),
//          color: Colors.white,
//        ),
            padding: const EdgeInsets.all(15.0),

            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ImageIcon(AssetImage('assets/location-marker.png')),
                Expanded(
                  child: Padding(
                    padding:EdgeInsets.only(left: 8.0) ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Street Address'),
                        Text('detailed address'),
                        Text('distance from location'),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.apps),
                    SizedBox(height: 20,),
                    Icon(Icons.navigate_next),

                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}
