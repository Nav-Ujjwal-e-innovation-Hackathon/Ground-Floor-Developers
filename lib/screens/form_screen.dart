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
  String typo;
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
          child: Column(children: <Widget>[
            TextFormField(
              decoration: InputDecoration(hintText: 'Full Name'),

              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onChanged: (value) {
                typo = value;
              },
            ),
            RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, otherwise false.
                if (_formKey.currentState.validate()) {
                  _firestore.collection('check').add(
                    {'text': typo, 'sender': emailloggedin},
                  );
                  Navigator.pushNamed(context, ChatScreen.id);
                }
              },
              child: Text('Submit'),
            ),

            // Add TextFormFields and RaisedButton here.
          ])),
    );
  }
}
