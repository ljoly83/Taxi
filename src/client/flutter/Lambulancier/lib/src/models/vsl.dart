import 'dart:math';

/**
 * Model class for facturation-vsl-form.dart
 */
class VSL {

  List<String> dayList = <String>["Jour","Nuit","Férié"];
  List<bool> selectedDayList = <bool>[true,false,false];

  List<String> flatRateList = <String>["Départ","Prise en charge"];
  List<bool> selectedflatRateList = <bool>[true,false];

  String _day = 'Jour';
  String _flatRate = 'Départ';
  bool _aeroport = false;
  bool _allerRetour = false;
  int _kms = 0;
  int _peage = 0;
  int _supplements = 0;
  int _nbPersonnes = 0;
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

  set flatRate(value){
    _flatRate = value;
    computeTotal();
  }

  get aeroport {
    return _aeroport;
  }

  set aeroport(value){
    _aeroport = value;
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

  get nbPersonnes {
    return _nbPersonnes;
  }

  set nbPersonnes(value){
    _nbPersonnes = value;
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

  computeTotal() {
    // Simulate Random value
    var rng = new Random();
    total = total + 5;
    debug();
  }

  debug() {
    print ('------------------------');
    print ('Day:' + _day);
    print ('Aeroport:' + _aeroport.toString());
    print ('Aller/Retour:' + _allerRetour.toString());
    print ('Forfait:' + _flatRate);
    var i=0;
    String out ="";
    out = "";
    i=0;
    // IDE Bug selectedflatRateList is length 2 but compute 3
//    selectedflatRateList.forEach((v) {
//      out = out + '- ' + flatRateList[i] +':' + selectedflatRateList[i].toString();
//      i = i+1;
//    });
//    print(out);
    out = "";
    print ('kms:' + _kms.toString());
    print ('peage:' + _peage.toString());
    print ('supplements:' + _supplements.toString());
    print ('nbPersonnes:' + _nbPersonnes.toString());
    print ('partRo:' + _partRo.toString());
    print ('partRc:' + _partRc.toString());
    print ('total:' + _total.toString());

  }

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