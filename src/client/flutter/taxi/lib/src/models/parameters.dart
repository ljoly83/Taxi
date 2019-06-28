/**
 * Model class for parameters-form.dart
 */
class Parameters {

  List<String> yearList = <String>['2015','2013','2012'];
  List<String> zoneList = <String>["Zone A - 13,85 €", "Zone B - 13,45 €", "Zone C - 12,60 €", "Zone D - 11,97 €"];

  String _year = '2015';
  String _zone = 'Zone A - 13,85 €';
  int _partRo = 65;
  int _partRc = 35;

  // Use Singleton pattern to share global parameters
  static final Parameters _singleton = new Parameters._internal();
  factory Parameters() {
    return _singleton;
  }
  Parameters._internal();

  get year {
    return _year;
  }

  set year(value){
    _year = value;
    debug();
  }

  get zone {
    return _zone;
  }

  set zone(value){
    _zone = value;
    debug();
  }

  get partRo {
    return _partRo;
  }

  set partRo(value){
    _partRo = value;
    debug();
  }

  get partRc {
    return _partRc;
  }

  set partRc(value){
    _partRc = value;
    debug();
  }

  debug() {
    print('------------------------');
    print('Year:' + year);
    print('Zone:' + zone);
    print ('partRo:' + partRo.toString());
    print ('partRc:' + partRc.toString());
  }

}