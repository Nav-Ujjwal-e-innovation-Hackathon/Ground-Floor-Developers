import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:parchi_beta/screens/chat_screen.dart';
import 'package:parchi_beta/screens/registration_screen_patient.dart';

class FormScreen extends StatefulWidget {
  static const String id = 'form_screen';

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<FormScreen> {
  String name;
  String age;
  String sex;
  String allergy;
  String disease;
  final _formKey = GlobalKey<FormState>();
  final _firestore = Firestore.instance;

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
            child: Column(children: <Widget>[
              TextFormField(
                decoration: InputDecoration(hintText: 'Full Name'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onChanged: (value) {
                  name = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Age'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onChanged: (value) {
                  age = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Sex'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onChanged: (value) {
                  sex = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Disease'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onChanged: (value) {
                  disease = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: 'Allergies'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onChanged: (value) {
                  allergy = value;
                },
              ),
              RaisedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, otherwise false.
                  if (_formKey.currentState.validate()) {
                    _firestore.collection('medical_data').add(
                      {
                        'name': name,
                        'user': emailloggedin,
                        'age': age,
                        'sex': sex,
                        'Allergies': allergy,
                        'Disease': disease
                      },
                    );
                    Navigator.pushNamed(context, ChatScreen.id);
                  }
                },
                child: Text('Submit'),
              ),

              // Add TextFormFields and RaisedButton here.
            ]),
          )),
    );
  }
}
