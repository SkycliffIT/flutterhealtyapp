import 'package:flutter/material.dart';
import 'package:loginregister/doctordetails.dart';

class FindDoctor extends StatefulWidget {
  @override
  _FindDoctorState createState() => _FindDoctorState();
}

class _FindDoctorState extends State<FindDoctor> {
  Color bgColor = Color(0xff003366);
  TextStyle textStyle = TextStyle(
    color: Color(0xff003366),
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
  );

  navigateToDocDetailsScreen(data) {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => DoctorDetails(),
    //   ),
    // );
    Navigator.pushNamed(
      context, "/doctordetails",
      // arguments: {
      //   "pic": data.pic,
      //   "name": data.name,
      //   "speciality": data.speciality
      // }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        primary: true,
        leading: Icon(
          Icons.menu_open_outlined,
          color: bgColor,
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
                  color: bgColor,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(0.0),
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
                    labelStyle: TextStyle(color: Colors.grey),
                    labelText: "Search for doctors",
                    border: InputBorder.none,
                  ),
                ),
                trailing: Container(
                  padding: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Color(0xffe8664f),
                    border: Border.all(
                      // width: 10.0,
                      color: Color(0xffe8664f),
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
            Row(
              children: [
                Container(
                    margin:
                        EdgeInsets.only(top: 20.0, bottom: 10.0, left: 10.0),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: bgColor),
                    ))
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              height: 140.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 3,
                    color: Colors.white,
                    child: Column(
                      children: [
                        FractionalTranslation(
                          translation: Offset(0.5, -0.3),
                          child: Align(
                            child: Container(
                              // color: Colors.red,
                              height: 50,
                              width: 50,
                              child: Image.network(
                                "https://creazilla-store.fra1.digitaloceanspaces.com/emojis/58133/tooth-emoji-clipart-md.png",
                                scale: 8.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.only(left: 0),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Dental \nSurgeon",
                            style: TextStyle(
                                color: bgColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                          padding: const EdgeInsets.only(
                              top: 0, right: 20, left: 10),
                          margin:
                              const EdgeInsets.only(top: 0, right: 0, left: 0),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 3,
                    color: Colors.white,
                    child: Column(
                      children: [
                        FractionalTranslation(
                          translation: Offset(0.5, -0.3),
                          child: Align(
                            child: Container(
                              // color: Colors.red,
                              height: 50,
                              width: 50,
                              child: Image.network(
                                "https://www.nicepng.com/png/detail/30-304258_heart-rate-variability-heart-rate-logo-png.png",
                                scale: 8.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.only(left: 0),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Heart \nSurgeon",
                            style: TextStyle(
                                color: bgColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                          padding: const EdgeInsets.only(
                              top: 0, right: 20, left: 10),
                          margin:
                              const EdgeInsets.only(top: 0, right: 0, left: 0),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    elevation: 3,
                    color: Colors.white,
                    child: Column(
                      children: [
                        FractionalTranslation(
                          translation: Offset(0.5, -0.3),
                          child: Align(
                            child: Container(
                              // color: Colors.red,
                              height: 50,
                              width: 50,
                              child: Image.network(
                                "https://img.icons8.com/emoji/452/eye-emoji.png",
                                scale: 8.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.only(left: 0),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Eye \nSpecialist",
                            style: TextStyle(
                                color: bgColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                          padding: const EdgeInsets.only(
                              top: 0, right: 20, left: 10),
                          margin:
                              const EdgeInsets.only(top: 0, right: 0, left: 0),
                        ),
                      ],
                    ),
                  ),
                  // Stack(
                  //   children: [
                  //     Card(
                  //       elevation: 6.0,
                  //       child: Icon(
                  //         Icons.directions_walk,
                  //         size: 80.0,
                  //       ),
                  //     ),
                  //     Container(
                  //       margin: EdgeInsets.only(left: 80.0, bottom: 80.0),
                  //       child: Card(
                  //         elevation: 6.0,
                  //         child: Icon(
                  //           Icons.perm_camera_mic,
                  //           size: 80.0,
                  //         ),
                  //       ),
                  //     )
                  //   ],
                  // )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20.0, bottom: 10.0, left: 10.0),
                  child: Text(
                    "Top Doctors",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                        color: bgColor),
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),
            Container(
              height: 100,
              width: 350,
              child: ListView(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(10.0, 10.0),
                      ),
                    ),
                    color: Colors.blue[200],
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJPEi9kS7bEC8h5qJuE4I33mY6hWp_P7RMYg&usqp=CAU"),
                      ),
                      title: Text(
                        "Dr. John Kane",
                        style: textStyle,
                      ),
                      subtitle: Text(
                        "Dental Surgeon - Flower Hospitals",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.elliptical(10.0, 10.0),
                      ),
                    ),
                    color: Colors.blue[200],
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSh_52QzuptpHddqzqPdbrwaFqVINiwBx9JDQ&usqp=CAU"),
                      ),
                      title: Text(
                        "Dr. Christ Kane",
                        style: textStyle,
                      ),
                      subtitle: Text(
                        "Heart Surgeon - Flower Hospitals",
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      this.navigateToDocDetailsScreen({
                        "pic":
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVxBZ-y0HzZbPxAzw5N2yLQ_PMUQznJUJVoQ&usqp=CAU",
                        "name": "Dr. Michel Kane",
                        "speciality": "Eye Specialist - Flower Hospitals"
                      });
                    },
                    child: Card(
                      elevation: 6.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.elliptical(10.0, 10.0),
                        ),
                      ),
                      color: Colors.blue[200],
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVxBZ-y0HzZbPxAzw5N2yLQ_PMUQznJUJVoQ&usqp=CAU"),
                        ),
                        title: Text(
                          "Dr. Michel Kane",
                          style: textStyle,
                        ),
                        subtitle: Text(
                          "Eye Specialist - Flower Hospitals",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
