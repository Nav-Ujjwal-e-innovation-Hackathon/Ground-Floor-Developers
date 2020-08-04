import 'package:flutter/material.dart';
import 'login_screen.dart';
String domain;
class WelcomeScreen extends StatefulWidget {
  static const String id='welcome_screen';



  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 120.0,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Parchi',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.deepOrangeAccent[400],
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    domain='Patient';
                    Navigator.pushNamed(context, LoginScreen.id);

                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Patient',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.deepOrangeAccent[400],
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    domain='Doctor';
                    Navigator.pushNamed(context, LoginScreen.id);

                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Doctor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.deepOrangeAccent[400],
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    domain='Hospital';
                    Navigator.pushNamed(context, LoginScreen.id);

                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Hospital',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.deepOrangeAccent[400],
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    domain='Lab';
                    Navigator.pushNamed(context, LoginScreen.id);

                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Labs',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.deepOrangeAccent[400],
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    domain='Pharmacy';
                    Navigator.pushNamed(context, LoginScreen.id);

                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Pharmacy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
