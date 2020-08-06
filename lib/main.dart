import 'package:flutter/material.dart';
import 'package:parchi_beta/screens/chat_screen.dart';
import 'package:parchi_beta/screens/generateqr_screen.dart';
import 'screens/login_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/registration_screen_doctor.dart';
import 'screens/registration_screen_patient.dart';
import 'screens/registration_screen_hospital.dart';
import 'screens/registration_screen_lab.dart';
import 'screens/registration_screen_pharmacy.dart';
import 'screens/chat_screen.dart';
import 'screens/scan_screen.dart';
import 'screens/generateqr_screen.dart';
import 'screens/form_screen.dart';
import 'screens/formshow_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreenPatient.id: (context) => RegistrationScreenPatient(),
        RegistrationScreenDoctor.id: (context) => RegistrationScreenDoctor(),
        RegistrationScreenHospital.id: (context) =>
            RegistrationScreenHospital(),
        RegistrationScreenLab.id: (context) => RegistrationScreenLab(),
        RegistrationScreenPharmacy.id: (context) =>
            RegistrationScreenPharmacy(),
        ChatScreen.id: (context) => ChatScreen(),
        ScanScreen.id: (context) => ScanScreen(),
        GenerateScreen.id: (context) => GenerateScreen(),
        FormScreen.id: (context) => FormScreen(),
        FormShowScreen.id: (context) => FormShowScreen(),
      },
    );
  }
}
