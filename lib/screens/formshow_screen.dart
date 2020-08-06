import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:parchi_beta/screens/chat_screen.dart';
import 'package:parchi_beta/screens/form_screen.dart';
import 'package:parchi_beta/screens/registration_screen_patient.dart';

class FormShowScreen extends StatefulWidget {
  static const String id = 'formshow_screen';

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<FormShowScreen> {
  String typo;
  final _formKey = GlobalKey<FormState>();
  final _firestore = Firestore.instance;

  void getcheck(String emailtoshow) async {
    await for (var snapshot in _firestore.collection('check').snapshots()) {
      for (var checks in snapshot.documents) {
        //print(checks.data);
        if (checks.data['sender'] == emailtoshow) {
          checks.data.forEach((key, value) {
            if (key == 'text') {
              print(key + ":" + value);
            }
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Profile Data'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Form(
          key: _formKey,
          child: Column(children: <Widget>[
            // Add TextFormFields and RaisedButton here.
            RaisedButton(
              onPressed: () {
                getcheck(finalemail);
              },
              child: Text('Show'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, FormScreen.id);
              },
              child: Text('Edit'),
            )
          ])),
    );
  }
}
