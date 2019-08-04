import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class SelectedConfiguration with ChangeNotifier {
  String _selectedDrink = "M";
  String _selectedDrinkSize;
  String _selectedMilkSize = "M";
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

  get selectedMilkSize {
     return _selectedMilkSize;
  }
  setSelectedMilkSize(String value) {
     _selectedMilkSize = value;
     notifyListeners();
  }

  setSelectedDrink(String value) {
     _selectedDrink = value;
     notifyListeners();
  }
}