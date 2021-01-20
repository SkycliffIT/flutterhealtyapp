import 'package:flutter/material.dart';

class FindDoctor extends StatefulWidget {
  @override
  _FindDoctorState createState() => _FindDoctorState();
}

class _FindDoctorState extends State<FindDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(icon: Icon(Icons.menu), onPressed: null)],
        backgroundColor: Colors.white,
        title: ListTile(
          // leading: Text("Leading"),
          trailing: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjabS_QKAIZGdgiOabpNuVXpBLU1qy5Pp8VQ&usqp=CAU",
            ),
          ),
        ),
      ),
      body: Container(
        child: Text(""),
      ),
    );
  }
}
