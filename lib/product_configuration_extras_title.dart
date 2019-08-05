import 'package:flutter/material.dart';

class ProductConfigurationExtrasTitle extends StatelessWidget {
  final extrasOptions = [
    [Icons.fastfood, 'Karamell'],
    [Icons.fastfood, 'Hasselnuss'],
    [Icons.fastfood, 'Vanille'],
    [Icons.fastfood, 'Kokosnuss'],
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ...extrasOptions
            .map(
              (extraOption) => Expanded(
                      child: ExtrasTile(
                    icon: extraOption[0],
                    extrasType: extraOption[1],
                  )),
            )
            .toList(),
      ],
    );
  }
}

class ExtrasTile extends StatelessWidget {
  final IconData icon;
  final String extrasType;

  ExtrasTile({this.icon, this.extrasType});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon),
        Text('$extrasType'),
      ],
    );
  }
}
