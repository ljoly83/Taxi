import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 100, 20, 0),
                child: Image.asset(
                  'assets/aidesnsoft-logom.png',
                  width: 248.0,
                  height: 56.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Solutions pour Transporteurs Sanitaires:',
                      style: Theme.of(context).textTheme.display1,
                    ),
                    Text(
                      'Facturation, Régulation, Géolocalisation, Services PEC+ gratuit',
                      style: Theme.of(context).textTheme.display1,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.email, color: Color(0xff2196f3)),
                    InkWell(
                        child: new Text('http://www.aidesnsoft.fr',
                            style: Theme.of(context).textTheme.display3),
                        onTap: () => launch('mailto:info@aidesnsoft.fr')),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 70,
          child: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.web_asset, color: Color(0xff2196f3)),
                      InkWell(
                          child: new Text('http://www.aidesnsoft.fr',
                              style: Theme.of(context).textTheme.display3),
                          onTap: () => launch('http://www.aidesnsoft.fr')),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.call, color: Color(0xff2196f3)),
                      InkWell(
                          child: new Text('04.98.01.64.00',
                              style: Theme.of(context).textTheme.display3),
                          onTap: () => launch('tel:0498016400')),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
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
