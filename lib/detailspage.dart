import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailsPage extends StatefulWidget {
  String srcImage;
  DetailsPage(this.srcImage);
  @override
  _DetailsPageState createState() => _DetailsPageState(this.srcImage);
}

class _DetailsPageState extends State<DetailsPage> {
  String imageSrc;
  _DetailsPageState(this.imageSrc);
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  saveDetails() {
    if (this.nameController.text.isNotEmpty &&
        this.mailController.text.isNotEmpty &&
        this.mailController.text.isNotEmpty) {
      return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          actions: <Widget>[
            MaterialButton(
              onPressed: closeDialog,
              child: Icon(Icons.close),
            )
          ],
          content: Container(
            height: 100.0,
            // color: Colors.black,
            child: Column(
              children: [
                Text("Name: ${nameController.text}",
                    style: TextStyle(color: Colors.black, fontSize: 20.0)),
                Text(
                  "Age: ${ageController.text}",
                  style: TextStyle(color: Colors.orange, fontSize: 20.0),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  "MailId: ${mailController.text}",
                  style: TextStyle(fontSize: 20.0),
                )
              ],
            ),
          ),
        ),
      );
    }
  }

  void closeDialog() {
    Navigator.of(context).pop();
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.network(
                  "$imageSrc",
                  height: 200.0,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.white,
                  border: Border.all(
                    width: 1.0,
                    color: Colors.blue,
                  ),
                ),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextField(
                  controller: nameController,
                  toolbarOptions: ToolbarOptions(copy: true, paste: true),
                  textDirection: TextDirection.ltr,
                  // cursorRadius: Radius.circular(20.0),
                  decoration: InputDecoration(
                    labelText: "Enter Your Name",
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.white,
                  border: Border.all(
                    width: 1.0,
                    color: Colors.blue,
                  ),
                ),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextField(
                  controller: ageController,
                  decoration: InputDecoration(
                    hintText: "",
                    // alignLabelWithHint: true,
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    labelText: "Enter Your Age",
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.white,
                  border: Border.all(
                    width: 1.0,
                    color: Colors.blue,
                  ),
                ),
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextField(
                  controller: mailController,
                  decoration: InputDecoration(
                    labelText: "Enter Your Mail",
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: RaisedButton(
                  visualDensity: VisualDensity(horizontal: 4.0, vertical: 1.6),
                  padding: EdgeInsets.all(10.0),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(14.0, 14.0))),
                  color: Colors.blueAccent,
                  elevation: 6.0,
                  onPressed: saveDetails,
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
              // Row(
              //   children: [
              //     Container(
              //       width: 100.0,
              //       child: TextField(
              //         decoration: InputDecoration(
              //             labelText: "Enter Your Name",
              //             border: InputBorder.none,
              //             hintText: 'Enter a search term'),
              //       ),
              //     ),
              //     Container(
              //       width: 100.0,
              //       child: TextField(
              //         decoration: InputDecoration(
              //             labelText: "Enter Your Name",
              //             border: InputBorder.none,
              //             hintText: 'Enter a search term'),
              //       ),
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
