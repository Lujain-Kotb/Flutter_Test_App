import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  final int stepPosition;
  static const _numberOfSteps = 5;

  TopBar({@required this.stepPosition});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      title: Center(
              child: DotsIndicator(dotsCount: _numberOfSteps,
              axis: Axis.horizontal,
              position: stepPosition,
              decorator: DotsDecorator(
                color: Theme.of(context).primaryColor,
                activeColor: Theme.of(context).primaryColor,
                //activeShape: const Border(),
                size: Size(5.0, 5.0),
              ),
              ),
            ),
      actions: <Widget>[
        Icon(Icons.favorite_border),
          SizedBox(width: 10.0,),
          Icon(Icons.add),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
