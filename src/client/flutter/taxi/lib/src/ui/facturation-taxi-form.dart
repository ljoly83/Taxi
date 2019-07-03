import 'package:flutter/material.dart';

import '../resources/taxi-service.dart';
import '../models/taxi-docalcul-request.dart';
import '../models/taxi-docalcul-response.dart';

class FacturationTaxiForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Formulaire facturation';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: TaxiForm(),
      ),
    );
  }
}


// Create a Form widget.
class TaxiForm extends StatefulWidget {
  @override
  TaxiFormState createState() {
    return TaxiFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class TaxiFormState extends State<TaxiForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  TaxiService _service = new TaxiService();
  TaxiDoCalculRequest _request;
  String _guidConvention;
  Transport _transport;
  DetailSimultaneousTransport _detailSimultaneousTransport;
  List<LigneDetailTransportSimultane> _listLigneDetailTransportSimultane;
  LigneDetailTransportSimultane _ligneDetailTransportSimultane;
  Param _param;

  Future<TaxiDoCalculResponse> futureResponse;

  void sendRequest(){

    // For test
    _guidConvention = "135abd6b-c197-4037-a929-00233a7fece9";
    _ligneDetailTransportSimultane = new LigneDetailTransportSimultane(1,2,3,4);
    _listLigneDetailTransportSimultane = [];
    _detailSimultaneousTransport = new DetailSimultaneousTransport(_listLigneDetailTransportSimultane, 1,2,1.0,1.1);
    _param = new Param(1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,false,false,12.36,false,false,"20:00","20:00",32.8);
    _transport = new Transport("2019-06-25T09:00:00","2019-06-25T09:00:00","2019-06-25T09:00:00","2019-06-25T09:00:00","2019-06-25T09:00:00",1.0,2.0,3.0,4.0,1,"05:00",20.69,true,false,false,false,1,2,3,4,5,6,7,8,9,true,205.23,false,"AR",false,89.30,158,true,false,21.69,false,10.20,15.16,false,false,false,false,false,false,1,false,"oui",59,false,_detailSimultaneousTransport);
    _request = new TaxiDoCalculRequest(_guidConvention,_param, _transport );
    futureResponse = _service.doCalculs(_request);
  }


  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: FutureBuilder<TaxiDoCalculResponse>(
              future: futureResponse,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text("Success !!!");
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                // By default, show a loading spinner.
                return CircularProgressIndicator();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                sendRequest();
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.

                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}