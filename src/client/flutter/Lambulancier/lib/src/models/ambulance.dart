class Ambulance {

  List<String> dayList = <String>["Jour","Nuit","Férié"];
  List<bool> selectedDayList = <bool>[true,false,false];

  List<String> flatRateList = <String>["Départ","Agglo","Prise Ch."];
  List<bool> selectedflatRateList = <bool>[true,false,false];

  List<String> supplementList = <String>["Aéroport","SMUR","Préma"];
  List<bool> selectedSupplementList = <bool>[false,false,false];

  String _day = 'Jour';
  String _flatRate = 'Départ';
  List<String> _supplement =  <String>["","","Prise Ch."];
  bool _gardeCentre15 = false;
  bool _allerRetour = false;
  int _kms = 0;
  int _peage = 0;
  int _supplements = 0;
  int _partRo = 0;
  int _partRc = 0;
  double _total = 0;

  get day {
    return _day;
  }

  set day(value){
    _day = value;
    computeTotal();
  }

  get flatRate {
    return _flatRate;
  }

  set flatRate(value) {
    _flatRate = value;
    computeTotal();
  }

  get supplement {
    return _supplement;
  }

  set supplement(value){
    _supplement = value;
    computeTotal();
  }

  get gardeCentre15 {
    return _gardeCentre15;
  }

  set gardeCentre15(value){
    _gardeCentre15 = value;
    computeTotal();
  }


  get allerRetour {
    return _allerRetour;
  }

  set allerRetour(value){
    _allerRetour = value;
    computeTotal();
  }


  get kms {
    return _kms;
  }

  set kms(value){
    _kms = value;
    computeTotal();
  }

  get peage {
    return _peage;
  }

  set peage(value){
    _peage = value;
    computeTotal();
  }

  get supplements {
    return _supplements;
  }

  set supplements(value){
    _supplements = value;
    computeTotal();
  }

  get partRo {
    return _partRo;
  }

  set partRo(value){
    _partRo = value;
    _partRc = 100 - _partRo;
    computeTotal();
  }

  get partRc {
    return _partRc;
  }
  // TODO don't undertand why set partRc/setPartRc does not does the same thing with the same code regarding UI refresh
  // It work but it's weird
  set partRc(value){
    _partRc = value;
    _partRo = 100 - _partRc;
    computeTotal();
  }

  setPartRo(String val){
    _partRo = int.parse(val);
    _partRc = 100 - _partRo;
    computeTotal();
  }

  setPartRc(String value){
    _partRc = int.parse(value);
    _partRo = 100 - _partRc;
    computeTotal();
  }

  get total {
    return _total;
  }

  set total(value){
    _total = value;
  }

  setSelectedDay (int index){
    selectedDayList = <bool>[false,false,false];
    selectedDayList[index]=true;
    //computeTotal(); done in set day
  }

  setSelectedFlatRate(index){
    selectedflatRateList = <bool>[true,false,false];
    selectedDayList[index]=true;
    //computeTotal();
  }

  setSelectedSupp(index, isChecked){
    selectedSupplementList[index] = isChecked;
    computeTotal();
  }

  //TODO implement correctly this method
  setSelectedSupp2(List<String> checked){
//    for (int i ; i < supplementList.length - 1; i++){
//      for (int j ; j < checked.length - 1; j++) {
//        (supplementList.contains(checked[j])) ? selectedSupplementList[i] = true : selectedSupplementList[i]=false;
//      }
//    };
  }

  computeTotal() {
    // Simulate Random value
    total = total + 5;
    debug();
  }

  debug() {
    print ('------------------------');
    print ('Day:' + _day);
    var i=0;
    String out ="";
    selectedSupplementList.forEach((v) {
      out = out + '- ' +  supplementList[i] +':' + selectedSupplementList[i].toString();
      i = i+1;
    });
   print(out);
    out = "";
    i=0;
    _supplement.forEach((v) {
      out = out + '- ' +  'supplement:' + _supplement[i];
      i = i+1;
    });
    print(out);
    print ('GardeCentre15:' + _gardeCentre15.toString());
    print ('Aller/Retour:' + _allerRetour.toString());
    print ('Forfait:' + _flatRate);
    out = "";
    i=0;
    selectedflatRateList.forEach((v) {
      out = out + '- ' + flatRateList[i] +':' + selectedflatRateList[i].toString();
      i = i+1;
    });
   print(out);
    out = "";
    print ('kms:' + _kms.toString());
    print ('peage:' + _peage.toString());
    print ('supplements:' + _supplements.toString());
    print ('partRo:' + _partRo.toString());
    print ('partRc:' + _partRc.toString());
    print ('total:' + _total.toString());

  }
}