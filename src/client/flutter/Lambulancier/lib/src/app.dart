import 'package:flutter/material.dart';
import 'ui/home.dart';
import 'ui/register-form.dart';
import 'ui/facturation.dart';
import 'ui/parameters-form.dart';

class App extends StatefulWidget {
  //App({Key key, this.title}) : super(key: key);


  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  static String title = 'Accueil';
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // TODO understand why BottomBar loose color after 3 max items.

  final List<Widget> _children = [
    Home(),
    Facturation(),
    ParametersForm(),
    RegisterForm()
  ];

  // Bottom buttons actions
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (_selectedIndex) {
        case 0:
          title = 'Accueil';
          break;
        case 1:
          title = 'Simulateur';
          break;
        case 2:
          title = 'Paramètres';
          break;
        case 3:
          title = 'Création de compte';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          // Define the default brightness and colors.
          brightness: Brightness.dark,
          primaryColor: Color(0xff2F3360),
          //Le bleu foncé du logo
          accentColor: Colors.cyan[600],
          backgroundColor: Colors.white,

          // Define the default font family.
          fontFamily: 'Montserrat',

          // Define the default TextTheme. Use this to specify the default
          // text styling for headlines, titles, bodies of text, and more.
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
            display1: TextStyle(
                fontSize: 11.0, fontFamily: 'Hind', color: Colors.black),
            display2: TextStyle(
                fontSize: 14.0, fontFamily: 'Hind', color: Colors.black),
          ),
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            // Here we take the value from the MyHomePage object that was created by
            // the App.build method, and use it to set our appbar title.
            title: Text(title),
          ),
          body: _children[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Accueil'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.receipt),
                title: Text('Simulateur'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.build),
                title: Text('Paramètres'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.send),
                title: Text('S\'enregister'),
              ),
            ],
            backgroundColor: Color(0xff2F3360), //Theme.of(context).primaryColor not working here ...
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
          ),
        )
    );
  }
}
