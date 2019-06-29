import 'package:flutter/material.dart';

import '../util/checkbox_group.dart';
import '../util/grouped_buttons_orientation.dart';
import '../util/radio_button_group.dart';
import '../models/vsl.dart';
import '../models/parameters.dart';

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
  final _param = Parameters();

  TextEditingController _RoController;
  TextEditingController _RcController;

  // Theme.of(context).textTheme.display1 raise a error
  // Define style here
  TextStyle _style =
      TextStyle(fontSize: 11.0, fontFamily: 'Hind', color: Colors.black);

  // Method called at each Frame enter
  @override
  void initState() {
    super.initState();
    print('VSLForm:InitState Called');
    // Retrieve global settings
    _vsl.partRo = _param.partRo;
    _vsl.partRc = _param.partRc;
    _RoController = new TextEditingController(text: _vsl.partRo.toString());
    _RcController = new TextEditingController(text: _vsl.partRc.toString());
    // Recompute
    _vsl.computeTotal();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Stack(children: <Widget>[
      Container(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
          alignment: Alignment.topLeft,
          child: Builder(
              builder: (context) => Form(
                  key: _formKey,
                  child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            RadioButtonGroup(
                              picked: _vsl.day,
                              orientation: GroupedButtonsOrientation.HORIZONTAL,
                              labels: _vsl.dayList,
                              onChange: (String label, int index) =>
                                  _vsl.setSelectedDay(index),
                              onSelected: (String label) => setState(() {
                                    _vsl.day = label;
                                  }),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            // [Monday] checkbox
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Checkbox(
                                  value: _vsl.aeroport,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _vsl.aeroport = value;
                                    });
                                  },
                                ),
                                Text("Aéroport"),
                              ],
                            ),
                            // [Tuesday] checkbox
                            Row(
                              children: <Widget>[
                                Checkbox(
                                  value: _vsl.allerRetour,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _vsl.allerRetour = value;
                                    });
                                  },
                                ),
                                Text("A/R"),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            RadioButtonGroup(
                              picked: _vsl.flatRate,
                              orientation: GroupedButtonsOrientation.HORIZONTAL,
                              labels: _vsl.flatRateList,
                              onChange: (String label, int index) =>
                                  _vsl.setSelectedFlatRate(index),
                              onSelected: (String label) => setState(() {
                                    _vsl.flatRate = label;
                                  }),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                                // Flexible is need for TextField to be rendered
                                child: Column(
                              children: <Widget>[
                                Container(
                                  child: TextField(
                                    style: TextStyle(color: Colors.black),
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        labelText: 'Kms', labelStyle: _style),
                                    onSubmitted: (val) => setState(
                                        () => _vsl.kms = int.parse(val)),
                                  ),
                                )
                                //container
                              ],
                            ))
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                              // Flexible is need for TextFormField to be rendered
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: TextField(
                                        controller: _RoController,
                                        style: TextStyle(color: Colors.black),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            labelText: 'Part RO (%)',
                                            labelStyle: _style),
                                        onChanged: (val) => setState(
                                                () {
                                              _param.setPartRo(val);
                                              _RcController = new TextEditingController(text: _param.partRc.toString());
                                            }),
                                        onSubmitted: (val) => setState(
                                                () => _param.setPartRo(val)),
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
                                      child: TextField(
                                        controller: _RcController,
                                        style: TextStyle(color: Colors.black),
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            labelText: 'Part RC (%)',
                                            labelStyle: _style),
                                        onChanged: (val) => setState(
                                                () {
                                              _param.setPartRc(val);
                                              _RoController = new TextEditingController(text: _param.partRo.toString());
                                            }),
                                        onSubmitted: (val) => setState(
                                                () => _param.setPartRc(val)),
                                      ),
                                    )
                                    //container
                                  ],
                                ))
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 0.0),
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                  // Flexible is need for TextField to be rendered
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
                                  // Flexible is need for TextField to be rendered
                                  child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Text(_vsl.total.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                  )
                                  //container
                                ],
                              )),
                              Icon(Icons.search),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    ]));
  }
}
