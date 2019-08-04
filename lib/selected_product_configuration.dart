import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class SelectedConfiguration with ChangeNotifier {
  String _selectedDrink;
  String _selectedDrinkSize;
  String _selectedMilkSize;
  String _selectedSoyMilkSize;
  bool _selectedExtraShot;
  String _selectedCaramelSize;
  String _selectedHazelnutSize;
  String _selectedWalnutSize;
  String _selectedChocolateSize;

  //static var selectedConfig = SelectedConfiguration();


   get selectedDrink {
     return _selectedDrink;
  }

  set selectedDrink(String value) {
     _selectedDrink = value;
     notifyListeners();
  }
}