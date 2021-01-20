import 'package:flutter/material.dart';
import 'package:loginregister/Register.dart';
import 'package:loginregister/bmicalci.dart';
import 'package:loginregister/booksession.dart';
import 'package:loginregister/finddoctor.dart';
import 'package:loginregister/home.dart';
import 'package:loginregister/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
      routes: <String, WidgetBuilder>{
        "/register": (BuildContext context) => RegisterScreen(),
        "/home": (BuildContext context) => HomeScreen(),
        "/bmi": (BuildContext context) => BmiCalculator(),
        '/booksession': (BuildContext context) => BookSession(),
        // "/finddoctor": (BuildContext context) => FindDoctor()
      },
    );
  }
}
