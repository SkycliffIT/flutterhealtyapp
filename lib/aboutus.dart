import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  Color bgColor = Color(0xff325064);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var deviceWidth = mediaQuery.size.width;
    var deviceHeight = mediaQuery.size.height;
    TextStyle textStyle = TextStyle(
      color: Colors.white,
      fontSize: 28.0,
      fontWeight: FontWeight.w600,
    );
    return Scaffold(
      backgroundColor: Color(0xff0D2A44),
      appBar: AppBar(
        leading: Text(""),
        backgroundColor: bgColor,
        elevation: 0.0,
        // title: Text("About Us"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.8, 0),
            end: Alignment(
                0.8, 2.8), // 10% of the width, so there are ten blinds.
            colors: [
              bgColor,
              const Color(0x7A726D) //0xffffffff
            ],
            // tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "About Us",
                  style: textStyle,
                ),
              ],
            ),
            Container(
              child: Image.network("http://www.skycliffit.com/images/abt1.jpg"),
            ),
            ListTile(
              leading: Text(
                "faithflix",
                style: textStyle,
              ),
              title: Container(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: Icon(
                    Icons.circle,
                    color: Colors.orange,
                    size: 10.0,
                  ),
                  onPressed: () {},
                ),
              ),
              // subtitle: Text(
              //   "Discover and Stream amazing christain music, products or movies.",
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 20.0,
              //     fontWeight: FontWeight.w600,
              //   ),
              // ),
            ),
            Container(
              width: 320.0,
              // margin: EdgeInsets.only(right: 140.0),
              alignment: Alignment.centerRight,
              child: Text(
                "Skycliff IT is passionately built to excel in Quality, Value and Time driven Techno Commercial world. We understand the Customer Requirements and Time bound business commitments, thus, perform time critical processes to deliver accurate results with quality as the prime and unique proposition. Our Customer First Approach with a Systemic view and Holistic approach makes Skycliff IT, a value-based, vision driven, mission-focused organization. Skycliff IT provides end-to-end solutions in Application Development and Maintenances, Product development and Consulting Services.",
                style: textStyle,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                maxLines: 10,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton.icon(
                    elevation: 6.0,
                    splashColor: Colors.grey,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    color: Colors.white,
                    label: Text(
                      "Contact",
                      style: TextStyle(color: Colors.teal, fontSize: 20.0),
                    ),
                    icon: Icon(
                      Icons.call,
                      color: Colors.teal,
                    ),
                  ),
                  RaisedButton.icon(
                    splashColor: Colors.grey,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    color: Colors.orange,
                    label: Text(
                      "Message",
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(
                      Icons.message_sharp,
                      color: Colors.white,
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
