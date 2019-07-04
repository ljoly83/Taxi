import 'package:flutter/material.dart';
//import 'package:link/link.dart';

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

    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
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
        ),
//        Row(
//          mainAxisAlignment: MainAxisAlignment.start,
//          children: [
//            Link(
//              child: Text('A link'),
//              url: 'http://aidesnsoft.fr',
//            )
//          ],
//        ),
        SizedBox(
          width: double.infinity,
          height: 100,
          child: Container(
            alignment: Alignment.center,
            color: Colors.amberAccent,
            child: Text('Publicité'),
          ),
        )
      ],
    );
  }
}
