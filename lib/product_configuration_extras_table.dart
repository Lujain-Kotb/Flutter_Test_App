import 'package:flutter/material.dart';
import 'product_configuration_extras_Row.dart';
import 'product_configuration_second_extras_row.dart';


class ProductConfigurationExtrasTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          ProductConfigurationExtrasRow(),
        ]),
        TableRow(children: [
          ProductConfigurationSecondExtrasRow(),
        ]),
      ] ,
    );
  }
}