import 'package:flutter/material.dart';

//import '../models/item_model.dart';
//import '../blocs/movies_bloc.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        // Column is also layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/aidesnsoft-logom.png',
            width: 248.0,
            height: 56.0,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
            child: Column(
              children: <Widget>[
                Text(
                  'Solutions pour Transporteur Sanitaires:',
                  style: Theme.of(context).textTheme.display1,
                ),
                Text(
                  'Facturation, Régulation, Géolocalisation, Services PEC+ gratuit',
                  style: Theme.of(context).textTheme.display1,
                ),
              ],
            ),
          ),
        ],
      ),
    )
    ;
  }
}
