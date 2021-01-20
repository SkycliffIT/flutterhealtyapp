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
        elevation: 0.0,
        primary: true,
        leading: Icon(
          Icons.menu_outlined,
          color: Colors.blue[900],
        ),
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
        child: Column(
          children: [
            Container(
              width: 300.0,
              margin: EdgeInsets.all(20.0),
              child: Text(
                "Find Your Desired Doctor",
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Colors.grey[200],
                // border: Border.all(
                //   width: 1.0,
                //   color: Colors.grey,
                // ),
              ),
              child: ListTile(
                title: TextField(
                  decoration: InputDecoration(
                    labelText: "Search for doctors",
                    border: InputBorder.none,
                  ),
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.red,
                    border: Border.all(
                      // width: 10.0,
                      color: Colors.red,
                    ),
                  ),
                  // color: Colors.red,
                  // padding: EdgeInsets.all(40.0),
                  child: IconButton(
                    color: Colors.white,
                    padding: EdgeInsets.all(20.0),
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            // ListView(
            //   scrollDirection: Axis.vertical,
            //   shrinkWrap: true,
            //   children: [
            //     Row(
            //       children: [
            //         Stack(
            //           children: [
            //             Card(
            //               elevation: 6.0,
            //               child: Icon(
            //                 Icons.directions_walk,
            //                 size: 80.0,
            //               ),
            //             ),
            //             Container(
            //               margin: EdgeInsets.only(left: 80.0, bottom: 80.0),
            //               child: Card(
            //                 elevation: 6.0,
            //                 child: Icon(
            //                   Icons.perm_camera_mic,
            //                   size: 80.0,
            //                 ),
            //               ),
            //             )
            //           ],
            //         )
            //       ],
            //     )
            //   ],
            // ),
            Container(
              child: ListTile(
                title: Text("Categories"),
                subtitle: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            Card(
                              elevation: 6.0,
                              child: Icon(
                                Icons.directions_walk,
                                size: 80.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 80.0, bottom: 80.0),
                              child: Card(
                                elevation: 6.0,
                                child: Icon(
                                  Icons.perm_camera_mic,
                                  size: 80.0,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
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
