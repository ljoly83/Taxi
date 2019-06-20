import 'package:flutter/material.dart';
import '../models/user.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
              child: Builder(
                  builder: (context) => Form(
                      key: _formKey,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  labelText: 'Société',
                                  labelStyle:
                                      Theme.of(context).textTheme.display2),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Société est obligatoire';
                                }
                              },
                              onSaved: (val) =>
                                  setState(() => _user.societe = val),
                            ),
                            TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                  labelText: 'Nom',
                                  labelStyle:
                                      Theme.of(context).textTheme.display2),
                              onSaved: (val) => setState(() => _user.nom = val),
                            ),
                            TextFormField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                    labelText: 'Prénom',
                                    labelStyle:
                                        Theme.of(context).textTheme.display2),
                                onSaved: (val) =>
                                    setState(() => _user.prenom = val)),
                            TextFormField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                    labelText: 'Département',
                                    labelStyle:
                                        Theme.of(context).textTheme.display2),
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Département est obligatoire';
                                  }
                                },
                                onSaved: (val) =>
                                    setState(() => _user.departement = val)),
                            TextFormField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    labelStyle:
                                        Theme.of(context).textTheme.display2),
                                keyboardType: TextInputType.emailAddress,
                                onSaved: (val) =>
                                    setState(() => _user.email = val)),
                            TextFormField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                    labelText: 'Nombre de véhicules',
                                    labelStyle:
                                        Theme.of(context).textTheme.display2),
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Nombre de véhicules est obligatoire';
                                  }
                                },
                                onSaved: (val) =>
                                    setState(() => _user.nbVehicules = val)),
                            TextFormField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                    labelText: 'Téléphone',
                                    labelStyle:
                                        Theme.of(context).textTheme.display2),
                                keyboardType: TextInputType.phone,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Téléphone est obligatoire';
                                  }
                                },
                                onSaved: (val) =>
                                    setState(() => _user.telephone = val)),
                            Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 16.0),
                                child: RaisedButton(
                                    onPressed: () {
                                      final form = _formKey.currentState;
                                      if (form.validate()) {
                                        form.save();
                                        _user.save();
                                        _showDialog(context);
                                      }
                                    },
                                    child: Text('Envoyer'))),
                          ]))))
        ])));
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text('Merci de votre confiance !')));
  }
}
