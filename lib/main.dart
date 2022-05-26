import 'package:flutter/material.dart';
import 'package:internship/Register/register.dart';
import 'package:internship/ResetPassword/reset_password.dart';
import 'package:internship/Start/start_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:StartScreen(),
    );
  }
}

