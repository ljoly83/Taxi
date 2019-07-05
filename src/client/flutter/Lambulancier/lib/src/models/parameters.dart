///
/// Model class for parameters-form.dart
///
class Parameters {

  List<String> yearList = <String>['2015', '2013', '2012'];

  List<String> _zoneList = <String>[
    "Zone A - 13,85 €",
    "Zone B - 13,45 €",
    "Zone C - 12,60 €",
    "Zone D - 11,97 €"
  ];
  Map<String, List<String>> _zoneListMapLabels = {
    '2015': [
      "Zone A - 13,85 €",
      "Zone B - 13,45 €",
      "Zone C - 12,60 €",
      "Zone D - 11,97 €"
    ],
    '2013': [
      "Zone A - 13,28 €",
      "Zone B - 12,90 €",
      "Zone C - 12,08 €",
      "Zone D - 11,48 €"
    ],
    '2012': [
      "Zone A - 13,28 €",
      "Zone B - 12,90 €",
      "Zone C - 12,08 €",
      "Zone D - 11,48 €"
    ]
  };
  Map<String, List<double>> _zoneListMapTarifs = {
    '2015': [
      13.85, // Zone A
      13.45, // Zone B
      12.60, // Zone C
      11.97 // Zone D
    ],
    '2013': [13.28, 12.90, 12.08, 11.48],
    '2012': [13.28, 12.90, 12.08, 11.48]
  };

  String _year = '2015';
  String _zone = 'Zone A - 13,85 €';
  int _partRo = 65;
  int _partRc = 35;
  double tarif = 13.85;

  // Use Singleton pattern to share global parameters
  static final Parameters _singleton = new Parameters._internal();
  factory Parameters() {
    return _singleton;
  }
  Parameters._internal();

  get year {
    return _year;
  }

  set year(value) {
    _year = value;
    debug();
  }

  get zone {
    return _zone;
  }

  set zone(value) {
    _zone = value;
    // Extract number from label
    List<double> _tarifZoneList = _zoneListMapTarifs[year];
    for (int j = 0; j < _tarifZoneList.length - 1; j++) {
      if (value.toString().contains("Zone A")) {
        tarif = _tarifZoneList[0]; break;
      } else if (value.toString().contains("Zone B")){
        tarif = _tarifZoneList[1]; break;
      } else if (value.toString().contains("Zone C")){
        tarif = _tarifZoneList[2]; break;
      } else if (value.toString().contains("Zone D")){
        tarif = _tarifZoneList[3]; break;
      }

    }
    debug();
  }

  // Create and return List<String> relevant to selected year
  get zoneList {
    _zoneListMapLabels.forEach((k, v) {
      print('year :$_year clé:$k. List: $v');
      if (k == _year) {
        //print('out :$k:$v');
        _zoneList = v;
      }
    });
    return _zoneList;
  }

  get partRo {
    return _partRo;
  }

  set partRo(value) {
    _partRo = value;
    debug();
  }

  get partRc {
    return _partRc;
  }

  set partRc(value) {
    _partRc = value;
    debug();
  }

  setPartRo(String val) {
    _partRo = int.parse(val);
    _partRc = 100 - _partRo;
    debug();
  }

  setPartRc(String val) {
    _partRc = int.parse(val);
    _partRo = 100 - _partRc;
    debug();
  }

  debug() {
    print('------------------------');
    print('Year:' + year);
    print('Zone:' + zone);
    print('Tarif:' + tarif.toString());
    print('partRo:' + partRo.toString());
    print('partRc:' + partRc.toString());
  }
}
