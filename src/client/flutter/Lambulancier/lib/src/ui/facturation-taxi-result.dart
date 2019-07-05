import 'package:flutter/material.dart';

class FacturationTaxiResult extends StatefulWidget {
  @override
  _FacturationTaxiResultState createState() => _FacturationTaxiResultState();
}

class _FacturationTaxiResultState extends State<FacturationTaxiResult> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("FacturationTaxiResult", style: Theme.of(context).textTheme.display2)),
    );
  }
}
