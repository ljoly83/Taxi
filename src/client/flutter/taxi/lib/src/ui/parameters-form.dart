import 'package:flutter/material.dart';

import '../util/checkbox_group.dart';
import '../util/grouped_buttons_orientation.dart';
import '../util/radio_button_group.dart';
import '../models/parameters.dart';

class ParametersForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Formulaire facturation';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ParamsForm(),
      ),
    );
  }
}

// Create a Form widget.
class ParamsForm extends StatefulWidget {
  @override
  ParamsFormState createState() {
    return ParamsFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class ParamsFormState extends State<ParamsForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  final _param = Parameters();

  var _selectedYearValue = "2015";

  // Theme.of(context).textTheme.display1 raise a error
  // Define style here
  TextStyle _style =
  TextStyle(fontSize: 11.0, fontFamily: 'Hind', color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            child: Stack(children: <Widget>[
              Container(
                  padding:
                  const EdgeInsets.symmetric(vertical: 60.0, horizontal: 16.0),
                  child: Builder(
                      builder: (context) => Form(
                          key: _formKey,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Choix du tarif")
                                  ],
                                ),

                                DropdownButton<String>(
                                  value: _selectedYearValue,
                                  onChanged: (String newValue) {
                                    setState(() {
                                      _selectedYearValue = newValue;
                                    });
                                  },
                                  items: <String>[
                                    '2015',
                                    '2013',
                                    '2012'
                                  ].map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),


                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    RadioButtonGroup(
                                      orientation:
                                      GroupedButtonsOrientation.VERTICAL,
                                      margin: const EdgeInsets.only(left: 20.0),
                                      labels: <String>["Zone A - 13,85 €", "Zone B - 13,45 €", "Zone C - 12,60 €", "Zone D - 11,97 €"],
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
                                                initialValue: '65',
                                                style: TextStyle(color: Colors.black),
                                                keyboardType: TextInputType.number,
                                                decoration: InputDecoration(
                                                    labelText: 'Part RO',
                                                    labelStyle: _style),
                                                onSaved: (val) => setState(() =>
                                                _param.partRo = int.parse(val)),
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
                                                initialValue: '35',
                                                style: TextStyle(color: Colors.black),
                                                keyboardType: TextInputType.number,
                                                decoration: InputDecoration(
                                                    labelText: 'Part RC',
                                                    labelStyle: _style),
                                                onSaved: (val) => setState(() =>
                                                _param.partRc = int.parse(val)),
                                              ),
                                            )
                                            //container
                                          ],
                                        ))
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                ),



                              ])
                      )
                  ))
            ]));
  }
}
