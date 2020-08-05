import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  static const String id = 'form_screen';

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Profile Data'),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
          color: Colors.deepOrangeAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: TextField(
                  decoration: InputDecoration(hintText: 'Enter Patient Data'),
                ),
              ),
              Center(
                child: Container(
                    padding: EdgeInsets.all(9.0),
                    child: new RaisedButton(
                      child: const Text('Submit'),
                      onPressed: null,
                    )),
              ),
            ],
          )),
    );
  }
}
