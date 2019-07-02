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
  Param _param;

  Future<TaxiDoCalculResponse> futureResponse;

  void sendRequest(){

    // For test
    _guidConvention = "135abd6b-c197-4037-a929-00233a7fece9";
    _transport = new Transport(
        "2019-06-25T09:00:00",
        "2019-06-25T09:00:01",
        "2019-06-25T09:00:02",
        "2019-06-25T09:00:03",
        "2019-06-25T09:00:04",
      2.0,3.0,4.0,5.0,1,"20min",89.56,false,false,false,false,50,1,2,3,4,5,6,7,8,true,5.55, false,"AR",false,50,0,false,false,2.0,false,1.2,2.3,false,false,false,false,false,false,1,false, "",8,true);
    _detailSimultaneousTransport = new DetailSimultaneousTransport(1,2,1.0,5.5);
    _param = new Param("2019-06-25T09:00:01","2019-06-25T09:00:02","2019-06-25T09:00:03");
    _request = new TaxiDoCalculRequest(_guidConvention,_transport, _detailSimultaneousTransport, _param);

    _service.doCalculs(_request);
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