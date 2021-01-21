import 'package:flutter/material.dart';
import 'package:loginregister/sidenav.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var isPasswordHidden = true;

  validation() {
    return showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (context) => AlertDialog(
        contentTextStyle: TextStyle(
            color: Colors.red, fontSize: 20.0, fontWeight: FontWeight.bold),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        backgroundColor: Colors.white,
        title: Text(
          "Mandatory Fields",
          style: TextStyle(fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
        content: Container(
          child: Text(
            "Fill all the fields",
            textAlign: TextAlign.center,
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.close), onPressed: closeDialog)
        ],
      ),
    );
  }

  void closeDialog() {
    Navigator.of(context).pop();
  }

  void register() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    if (this.firstNameController.text.isNotEmpty &&
        this.lastNameController.text.isNotEmpty &&
        this.emailController.text.isNotEmpty &&
        this.passwordController.text.isNotEmpty) {
      pref.setString("userInfo",
          '{"userName": "${firstNameController.text}", "email": "${emailController.text}","password": "${passwordController.text}" }');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SideNav(this.firstNameController.text,
              this.lastNameController.text, this.emailController.text),
        ),
      );
    } else {
      this.validation();
    }
  }

  void showHidePassword() {
    setState(() {
      this.isPasswordHidden = !this.isPasswordHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 100.0, left: 10.0, right: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://d18l82el6cdm1i.cloudfront.net/solvable/8fcf27ea1b.8199ff1920.Pu19oS.jpg"),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                alignment: Alignment.topLeft,
                child: Text(
                  ("Register").toUpperCase(),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextField(
                  controller: firstNameController,
                  decoration: InputDecoration(
                    labelText: "First Name *",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              // Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                    labelText: "Last Name *",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email *",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              // Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),
              // Container(
              //   width: 10.0,
              //   height: 10.0,
              //   // margin: EdgeInsets.only(left: 10.0, right: 10.0),
              //   child: ListTile(
              //     leading: TextField(
              //       controller: passwordController,
              //       // keyboardType: TextInputType.visiblePassword,
              //       obscureText: true,
              //       decoration: InputDecoration(labelText: "Password"),
              //     ),
              //     trailing: Icon(
              //       Icons.visibility,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              // Container(
              //   margin: EdgeInsets.only(left: 10.0, right: 10.0),
              //   child: TextField(
              //     controller: passwordController,
              //     // keyboardType: TextInputType.visiblePassword,
              //     obscureText: true,
              //     decoration: InputDecoration(labelText: "Password"),
              //   ),
              // ),

              ListTile(
                visualDensity: VisualDensity.adaptivePlatformDensity,
                title: TextField(
                  controller: this.passwordController,
                  obscureText: isPasswordHidden,
                  decoration: InputDecoration(
                    labelText: "Password *",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
                trailing: IconButton(
                  onPressed: showHidePassword,
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                elevation: 5.0,
                padding: EdgeInsets.all(14.0),
                color: Colors.grey,
                onPressed: this.register,
                child: Text(
                  ("create account").toUpperCase(),
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
