import 'package:flutter/material.dart';
import 'doctor.dart';

class HomeScreen extends StatefulWidget {
  String firstName;
  String lastName;
  String mailId;
  // HomeScreen(this.firstName, this.lastName, this.mailId);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _firstName;
  String _lastName;
  String _mailId;
  // _HomeScreenState(this._firstName, this._lastName, this._mailId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Health Care")),
      body: Container(
        // margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
        child: ListTile(
          title: RichText(
            text: TextSpan(
              text: 'Hello,',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontFamily: "Poppins-Bold",
              ),
              children: <TextSpan>[
                TextSpan(text: ' Ask Yourself?'),
              ],
            ),
          ),
          subtitle: OrientationBuilder(
            builder: (context, orientation) {
              return GridView.count(
                primary: false,
                padding: const EdgeInsets.all(4),
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                crossAxisCount: 2,
                children: [
                  Container(
                    color: Colors.blue[200],
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Center(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 60,
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DoctorPage()));
                            },
                            title: Text(
                              "Find Doctor",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              "210 Doctors",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white60,
                              ),
                            ),
                            contentPadding:
                                const EdgeInsets.only(top: 20, left: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Center(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.local_hospital,
                              color: Colors.white,
                              size: 60,
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Find Hospital",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              "30 Hospital",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white60,
                              ),
                            ),
                            contentPadding:
                                const EdgeInsets.only(top: 20, left: 15),
                          )
                        ],
                      ),
                    ),
                    color: Colors.grey,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Center(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.add_box,
                              color: Colors.white,
                              size: 60,
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Appointment",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              "59 Available",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white60,
                              ),
                            ),
                            contentPadding:
                                const EdgeInsets.only(top: 20, left: 15),
                          )
                        ],
                      ),
                    ),
                    color: Colors.grey,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Center(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.medical_services,
                              color: Colors.white,
                              size: 60,
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Drug List",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              "22 Services",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white60,
                              ),
                            ),
                            contentPadding:
                                const EdgeInsets.only(top: 20, left: 15),
                            onTap: () {},
                          )
                        ],
                      ),
                    ),
                    color: Colors.grey,
                  ),
                ],
              );
            },
          ),
        ),
      ),

      // Container(
      //   child: Column(
      //     children: [
      //       ListTile(
      //         title: Text(
      //           "Hello,",
      //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      //         ),
      //         subtitle: Container(
      //           margin: EdgeInsets.only(right: 0.0),
      //           child: Text(
      //             "How can we take care yourself?",
      //             style: TextStyle(
      //               fontSize: 20.0,
      //               fontWeight: FontWeight.w600,
      //             ),
      //           ),
      //         ),
      //       ),
      //       Row(
      //         children: [
      //           Column(
      //             children: [ListTile()],
      //           )
      //         ],
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
