import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pet_care_admin/pages/login_page.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(PetCareAdminApp());

  class PetCareAdminApp extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Pet Care Admin',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
      );
    }
  }
}
