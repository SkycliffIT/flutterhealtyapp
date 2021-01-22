import 'package:flutter/material.dart';

class DoctorDetails extends StatefulWidget {
  @override
  _DoctorDetailsState createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blueAccent,
        leading: Icon(Icons.arrow_back_ios),
        title: ListTile(
          trailing: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ),
        // title: Text(""),
      ),
      body: Container(
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVxBZ-y0HzZbPxAzw5N2yLQ_PMUQznJUJVoQ&usqp=CAU"),
                ),
                title: Text("Dr. Stella Kane"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
