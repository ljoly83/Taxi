class Parameters {


  List<String> yearList = <String>['2015','2013','2012'];
  List<String> zoneList = <String>["Zone A - 13,85 €", "Zone B - 13,45 €", "Zone C - 12,60 €", "Zone D - 11,97 €"];

  String year = '2015';
  String zone = 'Zone A - 13,85 €';
  int partRo = 65;
  int partRc = 35;

  // Use Singleton pattern to share global parameters
  static final Parameters _singleton = new Parameters._internal();
  factory Parameters() {
    return _singleton;
  }
  Parameters._internal();



  save() {

  }

}