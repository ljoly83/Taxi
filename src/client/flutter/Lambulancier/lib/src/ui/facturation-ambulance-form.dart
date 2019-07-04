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
    return AmbulanceForm();
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


  // Method called at each Frame enter
  @override
  void initState() {
    super.initState();
    print('AmbulanceForm:InitState Called');
    // Retrieve global settings
    _ambulance.partRo = _param.partRo;
    _ambulance.partRc = _param.partRc;
    _RoController =
        new TextEditingController(text: _ambulance.partRo.toString());
    _RcController =
        new TextEditingController(text: _ambulance.partRc.toString());
    // Recompute
    _ambulance.computeTotal();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Stack(children: <Widget>[
      Container(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
          alignment: Alignment.topLeft,
          child: Builder(
              builder: (context) => Form(
                  key: _formKey,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: <Widget>[
                            RadioButtonGroup(
                                labelStyle: Theme.of(context).textTheme.display2,
                                picked: _ambulance.day,
                                orientation:
                                    GroupedButtonsOrientation.HORIZONTAL,
                                margin: const EdgeInsets.only(left: 0.0),
                                labels: _ambulance.dayList,
                                onChange: (String label, int index) =>
                                    _ambulance.setSelectedDay(index),
                                onSelected: (String label) => setState(() {
                                      _ambulance.day = label;
                                    })),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            CheckboxGroup(
                              //TODO? solve default selection storage (lost on screen change)
                              //checked: _ambulance.supplement,
                              labelStyle: Theme.of(context).textTheme.display2,
                              orientation: GroupedButtonsOrientation.HORIZONTAL,
                              labels: _ambulance.supplementList,
                              onChange: (bool isChecked, String label,
                                      int index) =>
                                  _ambulance.setSelectedSupp(index, isChecked),
                              onSelected: (List<String> checked) {
                                print("checked: ${checked.toString()}");
                                _ambulance.setSelectedSupp2(checked);
                              },
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

                                  value: _ambulance.gardeCentre15,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _ambulance.gardeCentre15 = value;
                                    });
                                  },
                                ),
                                Text("Garde Centre 15", style: Theme.of(context).textTheme.display2),
                              ],
                            ),
                            // [Tuesday] checkbox
                            Row(
                              children: <Widget>[
                                Checkbox(
                                  activeColor: Theme.of(context).primaryColor,
                                  value: _ambulance.allerRetour,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _ambulance.allerRetour = value;
                                    });
                                  },
                                ),
                                Text("Aller/Retour", style: Theme.of(context).textTheme.display2),
                              ],
                            ),
                          ],
                        ),
                        // [Wednesday] checkbox
                        Row(
                          children: <Widget>[
                            RadioButtonGroup(
                              labelStyle: Theme.of(context).textTheme.display2,
                              picked: _ambulance.flatRate,
                              orientation: GroupedButtonsOrientation.HORIZONTAL,
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
                                        labelText: 'Kms', labelStyle: Theme.of(context).textTheme.display2),
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
                                        labelText: 'Péage', labelStyle: Theme.of(context).textTheme.display2),
                                    onSubmitted: (val) => setState(() =>
                                        _ambulance.peage = int.parse(val)),
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
                                    style: TextStyle(color: Colors.black),
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        labelText: 'Suppléments',
                                        labelStyle: Theme.of(context).textTheme.display2),
                                    onSubmitted: (val) => setState(() =>
                                        _ambulance.supplements =
                                            int.parse(val)),
                                  ),
                                )
                                //container
                              ],
                            ))
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        labelStyle: Theme.of(context).textTheme.display2),
                                    onChanged: (val) => setState(() {
                                          _param.setPartRo(val);
                                          _RcController =
                                              new TextEditingController(
                                                  text:
                                                      _param.partRc.toString());
                                        }),
                                    onSubmitted: (val) =>
                                        setState(() => _param.setPartRo(val)),
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
                                        labelStyle: Theme.of(context).textTheme.display2),
                                    onChanged: (val) => setState(() {
                                          _param.setPartRc(val);
                                          _RoController =
                                              new TextEditingController(
                                                  text:
                                                      _param.partRo.toString());
                                        }),
                                    onSubmitted: (val) =>
                                        setState(() => _param.setPartRc(val)),
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
                              vertical: 30.0, horizontal: 0.0),
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                  // Flexible is need for TextField to be rendered
                                  child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Text("Total",
                                        style: TextStyle(
                                            color: Colors.black,
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
                                            color: Colors.black,
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
