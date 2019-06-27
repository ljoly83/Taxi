class VSL {

  List<String> dayList = <String>["Jour","Nuit","Férié"];
  List<bool> selectedDayList = <bool>[true,false,false];

  List<String> flatRateList = <String>["Départ","Prise Ch."];
  List<bool> selectedflatRateList = <bool>[true,false,false];

  String day = 'Jour';
  String flatRate = 'Départ';
  int kms = 0;
  int peage = 0;
  int supplements = 0;
  int partRo = 0;
  int partRC = 0;

  setSelectedDay (int index){
    selectedDayList = <bool>[false,false,false];
    selectedDayList[index]=true;
  }

  setSelectedFlatRate(index){
    selectedflatRateList = <bool>[true,false,false];
    selectedDayList[index]=true;
  }

  save() {

  }

}