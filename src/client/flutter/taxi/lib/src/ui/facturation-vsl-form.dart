import 'package:flutter/material.dart';

import '../util/checkbox_group.dart';
import '../util/grouped_buttons_orientation.dart';
import '../util/radio_button_group.dart';
import '../models/vsl.dart';

class FacturationVSLForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Formulaire facturation';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: VSLForm(),
      ),
    );
  }
}

// Create a Form widget.
class VSLForm extends StatefulWidget {
  @override
  VSLFormState createState() {
    return VSLFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class VSLFormState extends State<VSLForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  final _vsl = VSL();

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
                                  orientation:
                                      GroupedButtonsOrientation.HORIZONTAL,
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
                                  orientation:
                                      GroupedButtonsOrientation.HORIZONTAL,
                                  labels: <String>[
                                    "Aéroport",
                                    "Aller/Retour",
                                  ],
                                  onChange: (bool isChecked, String label,
                                          int index) =>
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
                                  orientation:
                                      GroupedButtonsOrientation.HORIZONTAL,
                                  margin: const EdgeInsets.only(left: 20.0),
                                  labels: <String>[
                                    "Départ",
                                    "Prise Charge"
                                  ],
                                  onChange: (String label, int index) =>
                                      print("label: $label index: $index"),
                                  onSelected: (String label) => print(label),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Flexible(
                                    // Flexible is need for TextFormField to be rendered
                                    child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: TextFormField(
                                        style: TextStyle(color: Colors.black),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            labelText: 'Kms',
                                            labelStyle: _style),
                                        onSaved: (val) => setState(
                                            () => _vsl.kms = int.parse(val)),
                                      ),
                                    )
                                    //container
                                  ],
                                ))
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.black),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: 'Péage', labelStyle: _style),
                              onSaved: (val) =>
                                  setState(() => _vsl.peage = int.parse(val)),
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.black),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: 'Suppléments', labelStyle: _style),
                              onSaved: (val) => setState(
                                  () => _vsl.supplements = int.parse(val)),
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.black),
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: 'Nb. de personnes', labelStyle: _style),
                              onSaved: (val) => setState(
                                      () => _vsl.supplements = int.parse(val)),
                            ),
                            Row(
                              children: <Widget>[
                                Flexible(
                                    // Flexible is need for TextFormField to be rendered
                                    child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: TextFormField(
                                        initialValue: '65',
                                        style: TextStyle(color: Colors.black),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            labelText: 'Part RO',
                                            labelStyle: _style),
                                        onSaved: (val) => setState(
                                            () => _vsl.partRo = int.parse(val)),
                                      ),
                                    )
                                    //container
                                  ],
                                )),
                                Flexible(
                                    // Flexible is need for TextFormField to be rendered
                                    child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: TextFormField(
                                        style: TextStyle(color: Colors.black),
                                        initialValue: '35',
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            labelText: 'Part RC',
                                            labelStyle: _style),
                                        onSaved: (val) => setState(
                                            () => _vsl.partRC = int.parse(val)),
                                      ),
                                    )
                                    //container
                                  ],
                                ))
                              ],
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            ),

                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 0.0),
                              child: Row(
                                children: <Widget>[
                                  Flexible(
                                      // Flexible is need for TextFormField to be rendered
                                      child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: Text("Total",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                      )
                                      //container
                                    ],
                                  )),
                                  Flexible(
                                      // Flexible is need for TextFormField to be rendered
                                      child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: Text("0",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15)),
                                      )
                                      //container
                                    ],
                                  )),
                                  Icon(Icons.home),
                                ],
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                              ),
                            ),

//                            Container(
//                                padding: const EdgeInsets.symmetric(
//                                vertical: 16.0, horizontal: 16.0),
//                                child: RaisedButton(
//                                    onPressed: () {
//                                      final form = _formKey.currentState;
//                                      if (form.validate()) {
//                                        form.save();
//                                        _ambulance.save();
//                                      }
//                                    },
//                                    child: Text('Envoyer'))),
                          ]))))
        ])));
  }
}
