import 'package:flutter/material.dart';

import '../util/checkbox_group.dart';
import '../util/grouped_buttons_orientation.dart';
import '../util/radio_button_group.dart';
import '../models/ambulance.dart';
import '../models/parameters.dart';

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

class AmbulanceFormState extends State<AmbulanceForm> {
  final _formKey = GlobalKey<FormState>();

  final _ambulance = Ambulance();
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
    print('AmbulanceForm:InitState Called');
    // Retrieve global settings
    _ambulance.partRo = _param.partRo;
    _ambulance.partRc = _param.partRc;
    _RoController = new TextEditingController(text: _ambulance.partRo.toString());
    _RcController = new TextEditingController(text:_ambulance.partRc.toString());
    // Recompute
    _ambulance.computeTotal();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Stack(children: <Widget>[
      Container(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
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
                                picked: _ambulance.day,
                                orientation: GroupedButtonsOrientation.HORIZONTAL,
                                margin: const EdgeInsets.only(left: 20.0),
                                labels: _ambulance.dayList,
                                onChange: (String label, int index) =>
                                    _ambulance.setSelectedDay(index),
                                onSelected: (String label) => setState(() {
                                  _ambulance.day = label;
                                })),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CheckboxGroup(
                              //TODO solve default selection storage (lost on screen change)
                              //checked: _ambulance.supplement,
                              orientation: GroupedButtonsOrientation.HORIZONTAL,
                              labels: _ambulance.supplementList,
                              onChange: (bool isChecked, String label,
                                      int index) =>
                                  _ambulance.setSelectedSupp(index, isChecked),
                              onSelected: (List<String> checked) =>
                                  print("checked: ${checked.toString()}"),
                              //_ambulance.supplement = checked,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // [Monday] checkbox
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Checkbox(
                                  value: _ambulance.gardeCentre15,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _ambulance.gardeCentre15 = value;
                                    });
                                  },
                                ),
                                Text("Garde centre 15"),
                              ],
                            ),
                            // [Tuesday] checkbox
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Checkbox(
                                  value: _ambulance.allerRetour,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _ambulance.allerRetour = value;
                                    });
                                  },
                                ),
                                Text("Aller/Retour"),
                              ],
                            ),
                          ],
                        ),
                        // [Wednesday] checkbox
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RadioButtonGroup(
                              picked: _ambulance.flatRate,
                              orientation: GroupedButtonsOrientation.HORIZONTAL,
                              margin: const EdgeInsets.only(left: 20.0),
                              labels: _ambulance.flatRateList,
                              onChange: (String label, int index) =>
                                  //  print("label: $label index: $index"),
                                  _ambulance.setSelectedFlatRate(index),
                              onSelected: (String label) => setState(() {
                                    _ambulance.flatRate = label;
                                  }),
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
                                  child: TextField(
                                    style: TextStyle(color: Colors.black),
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        labelText: 'Kms', labelStyle: _style),
                                    onSubmitted: (val) => setState(
                                        () => _ambulance.kms = int.parse(val)),
                                  ),
                                )
                                //container
                              ],
                            ))
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                        TextField(
                          style: TextStyle(color: Colors.black),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Péage', labelStyle: _style),
                          onSubmitted: (val) =>
                              setState(() => _ambulance.peage = int.parse(val)),
                        ),
                        TextField(
                          style: TextStyle(color: Colors.black),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Suppléments', labelStyle: _style),
                          onSubmitted: (val) => setState(
                              () => _ambulance.supplements = int.parse(val)),
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                                // Flexible is need for TextField to be rendered
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
                                    onSubmitted: (val) => setState(() =>
                                        _ambulance.partRo = int.parse(val)),
                                  ),
                                )
                                //container
                              ],
                            )),
                            Flexible(
                                // Flexible is need for TextField to be rendered
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
                                    onSubmitted: (val) => setState(() =>
                                        _ambulance.partRc = int.parse(val)),
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
                                    child: Text(_ambulance.total.toString(),
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
                      ]))))
    ]));
  }
}
