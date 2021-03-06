import 'package:flutter/material.dart';
import 'package:loginregister/doctordetails.dart';
import './aboutus.dart';
import './sidenav.dart';
import './Register.dart';
import './bmicalci.dart';
import './booksession.dart';
import './login.dart';
import './responsiveui.dart';
import './details.dart';

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
        "/home": (BuildContext context) => SideNav("", "", ""),
        "/bmi": (BuildContext context) => BmiCalculator(),
        '/booksession': (BuildContext context) => BookSession(),
        "/responsiveui": (BuildContext context) => Responsiveui(),
        "/doctordetails": (BuildContext context) => DoctorDetails(),
        "/aboutus": (BuildContext context) => AboutUs()
      },
    );
  }
}
