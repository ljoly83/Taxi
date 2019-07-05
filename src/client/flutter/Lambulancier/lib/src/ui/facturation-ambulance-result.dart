import 'package:flutter/material.dart';

class FacturationAmbulanceResult extends StatefulWidget {
  @override
  _FacturationAmbulanceResultState createState() => _FacturationAmbulanceResultState();
}

class _FacturationAmbulanceResultState extends State<FacturationAmbulanceResult> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("FacturationAmbulanceResult", style: Theme.of(context).textTheme.display2)),
    );
  }
}
