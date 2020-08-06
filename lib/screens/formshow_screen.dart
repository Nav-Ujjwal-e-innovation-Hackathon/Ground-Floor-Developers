import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:parchi_beta/screens/chat_screen.dart';
import 'package:parchi_beta/screens/form_screen.dart';
import 'package:parchi_beta/screens/registration_screen_patient.dart';
import 'package:parchi_beta/screens/scan_screen.dart';

class FormShowScreen extends StatefulWidget {
  static const String id = 'formshow_screen';

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<FormShowScreen> {
  String typo;
  final _formKey = GlobalKey<FormState>();
  final _firestore = Firestore.instance;
  Text name;
  Text sex;
  String age;
  String disease;
  String allergy;
  String user;

  void getcheck() async {
    await for (var snapshot
        in _firestore.collection('medical_data').snapshots()) {
      for (var checks in snapshot.documents) {
        //print(checks.data);
        if (checks.data['user'] == finalemail) {
          checks.data.forEach((key, value) {
            if (key == 'name') {
              name = value;
            }
            if (key == 'age') {
              age = value;
            }
            if (key == 'sex') {
              sex = value;
            }
            if (key == 'Allergies') {
              allergy = value;
            }
            if (key == 'Disease') {
              disease = value;
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
          child: Center(
            child: Container(
              color: Colors.deepOrangeAccent,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Card(
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.local_hospital),
                            title: Text('Shrist Das'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.local_hospital),
                            title: Text('20'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.local_hospital),
                            title: Text('Male'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.local_hospital),
                            title: Text('Dust'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.local_hospital),
                            title: Text('Asthama'),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.local_hospital),
                            title: Text('shristdas123@gmail.com'),
                          ),
                        ],
                      ),
                    ),
                    // Add TextFormFields and RaisedButton here.

                    RaisedButton(
                      color: Colors.deepOrange,
                      onPressed: () {
                        Navigator.pushNamed(context, FormScreen.id);
                      },
                      child: Text('Edit'),
                    )
                  ]),
            ),
          )),
    );
  }
}
