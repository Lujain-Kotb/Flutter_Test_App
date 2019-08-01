 class selectedConfiguration {
  String _selectedDrink;
  String _selectedDrinkSize;
  String _selectedMilkSize;
  String _selectedSoyMilkSize;
  bool _selectedExtraShot;
  String _selectedCaramelSize;
  String _selectedHazelnutSize;
  String _selectedWalnutSize;
  String _selectedChocolateSize;

  static var selectedConfig = selectedConfiguration();


   get selectedDrink {
     return _selectedDrink;
  }

  set selectedDrink(value) {
     _selectedDrink = value;

  }
}