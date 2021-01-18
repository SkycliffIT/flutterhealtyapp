import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  String firstName;
  String lastName;
  String mailId;
  HomeScreen(this.firstName, this.lastName, this.mailId);
  @override
  _HomeScreenState createState() =>
      _HomeScreenState(this.firstName, this.lastName, this.mailId);
}

class _HomeScreenState extends State<HomeScreen> {
  String firstName;
  String lastName;
  String mailId;
  _HomeScreenState(this.firstName, this.lastName, this.mailId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.amberAccent,
              margin: EdgeInsets.all(80.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                margin: EdgeInsets.all(20.0),
                elevation: 5.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        "FirstName: ${this.firstName}",
                        overflow: TextOverflow.ellipsis,
                      ),
                      padding: EdgeInsets.all(20.0),
                    ),
                    Container(
                      child: Text(
                        "LastName: ${this.lastName}",
                        overflow: TextOverflow.ellipsis,
                      ),
                      padding: EdgeInsets.all(20.0),
                    ),
                    Container(
                      child: Text("Mail: ${this.mailId}"),
                      padding: EdgeInsets.all(20.0),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
