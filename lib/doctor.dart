import 'package:flutter/material.dart';
import 'package:loginregister/finddoctor.dart';

class DoctorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 100.0),
        color: Colors.white60,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              width: 300.0,
              // margin: EdgeInsets.only(top: 100.0),
              child: Text(
                "Choose The Doctor You Want",
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: EdgeInsets.only(left: 40.0),
              child: Text(
                "Lorem ipsum dolar amet, consecetuar adispcing inet mlado",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            Container(
              margin: EdgeInsets.only(right: 180.0),
              child: RaisedButton(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FindDoctor()));
                },
                color: Colors.red[400],
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
