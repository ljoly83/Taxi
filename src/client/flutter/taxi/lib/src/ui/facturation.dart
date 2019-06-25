import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'facturation-ambulance-form.dart';
import 'facturation-taxi-form.dart';
import 'facturation-vsl-form.dart';
import '../app.dart';

const Color _colorOne = Color(0x33000000);
const Color _colorTwo = Color(0x24000000);
const Color _colorThree = Color(0x1F000000);

class Facturation extends StatefulWidget {
  @override
  _FacturationState createState() => _FacturationState();

  //TODO Set the title (via app.dart) with VSL, Ambulance, taxi as the icon are not enough explicit
}
// TODO Try to remove Material app with the code of Mydemo.dart.

class _FacturationState extends State<Facturation> {
  final Map<int, Widget> logoWidgets = const <int, Widget>{
    0: Text('Ambulance'),
    1: Text('VSL'),
    2: Text('Taxi'),
  };

  final Map<int, Widget> icons = <int, Widget>{
    0: Center(
      child: FacturationAmbulanceForm(),
    ),
    1: Center(
      child: FacturationVSLForm(),
    ),
    2: Center(
      child: FlutterLogo(
        colors: Colors.cyan,
        size: 200.0,
      ),
    ),
  };

  int sharedValue = 0;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(5.0),
        ),
        SizedBox(
          width: 500.0,
          child: CupertinoSegmentedControl<int>(
            children: logoWidgets,
            onValueChanged: (int val) {
              setState(() {
                sharedValue = val;
              });
            },
            groupValue: sharedValue,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 16.0,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                borderRadius: BorderRadius.circular(3.0),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    offset: Offset(0.0, 3.0),
                    blurRadius: 5.0,
                    spreadRadius: -1.0,
                    color: _colorOne,
                  ),
                  BoxShadow(
                    offset: Offset(0.0, 6.0),
                    blurRadius: 10.0,
                    spreadRadius: 0.0,
                    color: _colorTwo,
                  ),
                  BoxShadow(
                    offset: Offset(0.0, 1.0),
                    blurRadius: 18.0,
                    spreadRadius: 0.0,
                    color: _colorThree,
                  ),
                ],
              ),
              child: icons[sharedValue],
            ),
          ),
        ),
      ],
    );
  }
}
