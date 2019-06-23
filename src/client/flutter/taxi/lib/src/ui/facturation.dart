import 'package:flutter/material.dart';
import 'facturation-ambulance-form.dart';
import 'facturation-taxi-form.dart';
import 'facturation-vsl-form.dart';

class Facturation extends StatefulWidget {
  @override
  _FacturationState createState() => _FacturationState();
}

class _FacturationState extends State<Facturation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              FacturationAmbulanceForm(),
              Icon(Icons.directions_car),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}