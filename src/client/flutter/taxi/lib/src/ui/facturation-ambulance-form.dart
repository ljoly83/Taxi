import 'package:flutter/material.dart';

//import 'package:grouped_buttons/grouped_buttons.dart';
import '../util/checkbox_group.dart';
import '../util/grouped_buttons_orientation.dart';
import '../util/radio_button_group.dart';
import '../models/ambulance.dart';

class FacturationAmbulanceForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Formulaire facturation';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: AmbulanceForm(),
      ),
    );
  }
}

// Create a Form widget.
class AmbulanceForm extends StatefulWidget {
  @override
  AmbulanceFormState createState() {
    return AmbulanceFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class AmbulanceFormState extends State<AmbulanceForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  final _ambulance = Ambulance();

  // Theme.of(context).textTheme.display1 raise a error
  // Define style here
  TextStyle _style =
      TextStyle(fontSize: 11.0, fontFamily: 'Hind', color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
              child: Builder(
                  builder: (context) => Form(
                      key: _formKey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RadioButtonGroup(
                                  orientation: GroupedButtonsOrientation.HORIZONTAL,
                                  margin: const EdgeInsets.only(left: 20.0),
                                  labels: <String>["Jour", "Nuit", "Férié"],
                                  onChange: (String label, int index) =>
                                      print("label: $label index: $index"),
                                  onSelected: (String label) => print(label),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CheckboxGroup(
                                  orientation: GroupedButtonsOrientation.HORIZONTAL,
                                  labels: <String>[
                                    "Aéroport",
                                    "SMUR",
                                    "Préma",
                                  ],
                                  onChange: (bool isChecked, String label, int index) =>
                                      print(
                                          "isChecked: $isChecked   label: $label  index: $index"),
                                  onSelected: (List<String> checked) =>
                                      print("checked: ${checked.toString()}"),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                CheckboxGroup(
                                  orientation: GroupedButtonsOrientation.HORIZONTAL,
                                  labels: <String>[
                                    "Garde centre 15",
                                    "Aller/Retour",
                                  ],
                                  onChange: (bool isChecked, String label, int index) =>
                                      print(
                                          "isChecked: $isChecked   label: $label  index: $index"),
                                  onSelected: (List<String> checked) =>
                                      print("checked: ${checked.toString()}"),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RadioButtonGroup(
                                  orientation: GroupedButtonsOrientation.HORIZONTAL,
                                  margin: const EdgeInsets.only(left: 20.0),
                                  labels: <String>["Départ", "Agglo", "Prise Ch."],
                                  onChange: (String label, int index) =>
                                      print("label: $label index: $index"),
                                  onSelected: (String label) => print(label),
                                ),
                              ],
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.black),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: 'Kms',
                                  labelStyle: _style),
                              onSaved: (val) =>
                                  setState(() => _ambulance.kms = int.parse(val)),
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.black),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: 'Péage',
                                  labelStyle: _style),
                              onSaved: (val) =>
                                  setState(() => _ambulance.peage = int.parse(val)),
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.black),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: 'Suppléments',
                                  labelStyle: _style),
                              onSaved: (val) =>
                                  setState(() => _ambulance.supplements = int.parse(val)),
                            ),

//                      Row(
//                          mainAxisAlignment: MainAxisAlignment.center,
//                          children: <Widget>[
//
//                            Column(
//                              crossAxisAlignment: CrossAxisAlignment.stretch,
//                              children: [

                                        TextFormField(
                                          style: TextStyle(color: Colors.black),
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              labelText: 'Part RO',
                                              labelStyle: _style),
                                          onSaved: (val) =>
                                              setState(() => _ambulance.partRo = int.parse(val)),
                                        ),




                                        TextFormField(
                                          style: TextStyle(color: Colors.black),
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              labelText: 'Part RC',
                                              labelStyle: _style),
                                          onSaved: (val) =>
                                              setState(() => _ambulance.partRC = int.parse(val)),
                                        ),

//                              ],
//                            ),
//
//                          ],
//                      ),


                            Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 16.0),
                                child: RaisedButton(
                                    onPressed: () {
                                      final form = _formKey.currentState;
                                      if (form.validate()) {
                                        form.save();
                                        _ambulance.save();
                                      }
                                    },
                                    child: Text('Envoyer'))),
                          ]))))
        ])));
  }
}
