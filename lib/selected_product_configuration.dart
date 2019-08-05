import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class SelectedConfiguration with ChangeNotifier {
  String _selectedDrink = "M";
  String _selectedDrinkSize;
  String _selectedMilkSize = "M";
  String _selectedSoyMilkSize;
  bool _selectedExtraShot = false;
  String _selectedAdditionSize = "M";
  String _selectedSecondAdditionSize = "M";
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

  get selectedSoyMilkSize {
     return _selectedSoyMilkSize;
  }

  get selectedExtraShot {
     return _selectedExtraShot;
  }

  get selectedAdditionSize {
     return _selectedAdditionSize;
  }

  get selectedSecondAdditionSize {
     return _selectedSecondAdditionSize;
  }

  setSelectedSecondAdditionSize(String value) {
      _selectedSecondAdditionSize = value;
      notifyListeners();
}

  setSelectedAdditionSize (String value){
     _selectedAdditionSize = value;
     notifyListeners();
}

  setSelectedExtraShot(bool value) {
     _selectedExtraShot = value;
     notifyListeners();
  }

  setSelectedSoyMilkSize(String value) {
     _selectedSoyMilkSize = value;
     notifyListeners();
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