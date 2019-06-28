import 'package:flutter/material.dart';

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

  TextEditingController _RoController;
  TextEditingController _RcController;


  // Theme.of(context).textTheme.display1 raise a error
  // Define style here
  TextStyle _style =
      TextStyle(fontSize: 11.0, fontFamily: 'Hind', color: Colors.black);

  @override
  void initState() {
    super.initState();
    _RoController = new TextEditingController(text: _param.partRo.toString());
    _RcController = new TextEditingController(text: _param.partRc.toString());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Stack(children: <Widget>[
      Container(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 16.0),
          child: Builder(
              builder: (context) => Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[Text("Choix du tarif")],
                        ),
                        DropdownButton<String>(
                          value: _param.year,
                          onChanged: (String newValue) {
                            setState(() {
                              _param.year = newValue;
                            });
                          },
                          items: _param.yearList
                              .map<DropdownMenuItem<String>>((String value) {
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
                                picked: _param.zone,
                                orientation: GroupedButtonsOrientation.VERTICAL,
                                margin: const EdgeInsets.only(left: 20.0),
                                labels: _param.zoneList,
                                onSelected: (String label) => setState(() {
                                      _param.zone = label;
                                    })),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        ),
                      ]))))
    ]));
  }
}
