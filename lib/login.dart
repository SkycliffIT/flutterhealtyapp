import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:loginregister/model/user_info.dart';
import './home.dart';
import './sidenav.dart';
import './Register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController forgotpasswordController = TextEditingController();
  var isPasswordHidden = true;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  // Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  @override
  void initState() {
    // SharedPreferences pref =
    //     SharedPreferences.getInstance() as SharedPreferences;
    // print(pref.getString("userInfo"));
    super.initState();
    getUserInfo();
  }

  getUserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userInfoJsonString = prefs.getString('userInfo');
    if (userInfoJsonString != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SideNav(this.emailController.text,
                  this.passwordController.text, this.emailController.text)));
    }
    setState(() {
      // this.emailController.text =
    });
  }

  setUserInfo() async {
    setState(() {
      this.emailController.text == "shivu@gmail.com";
      this.passwordController.text == "shivu@1234";
    });
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("userInfo",
        '{"userName": "", "email": "${emailController.text}","password": "${passwordController.text}" }');
  }

  void login(context) {
    if (this.emailController.text == "shivu@gmail.com" &&
        this.passwordController.text == "shivu@1234") {
      this._displaySnackBar(context, "Logged in success");
      this.setUserInfo();
      Future.delayed(
        Duration(milliseconds: 1500),
        () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SideNav(this.emailController.text,
                    this.passwordController.text, this.emailController.text)
                // HomeScreen(),
                ),
          );
        },
      );
    } else {
      this._displaySnackBar(context, "Register first");
      // Navigator.pushNamed(context, '/register');
    }
  }

  confirm() {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        backgroundColor: Colors.white,
        title: Text(
          "Alert Dialog",
          style: TextStyle(fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 40.0),
            child: MaterialButton(
              onPressed: closeDialog,
              child: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SideNav(
                    this.emailController.text,
                    this.passwordController.text,
                    this.emailController.text,
                  ),
                ),
              );
            },
            child: Text(
              "Ok",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          )
        ],
        content: Container(
          height: 120.0,
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }

  forgotPassword() {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        // buttonPadding: EdgeInsets.all(0.0),
        backgroundColor: Colors.white,
        title: Text(
          "Forgot Password",
          style: TextStyle(fontSize: 20.0),
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 40.0),
            child: MaterialButton(
              onPressed: closeDialog,
              child: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              saveNewPassword(context);
            },
            child: Icon(
              Icons.save_sharp,
              color: Colors.blue,
            ),
          )
        ],
        content: Container(
          height: 120.0,
          // width: 100,
          child: Column(
            children: [
              TextField(
                obscureText: true,
                controller: forgotpasswordController,
                decoration: InputDecoration(
                    labelText: "New Password", hintText: "Enter new Password"),
              ),
              TextField(
                obscureText: true,
                controller: forgotpasswordController,
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "Enter new Password"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void closeDialog() {
    Navigator.of(context).pop();
  }

  saveNewPassword(context) {
    closeDialog();
    // Builder(builder: (BuildContext  context)  {
    //   // return Center(child: );
    // });
  }

  void showHidePassword() {
    setState(() {
      this.isPasswordHidden = !this.isPasswordHidden;
    });
  }

  _displaySnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(
      elevation: 10.0,
      content: Text(
        message,
        style: TextStyle(fontSize: 16.0),
      ),
      backgroundColor: Colors.greenAccent,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
          // side: BorderSide(
          //     color: Colors.white, width: 10.0),
          borderRadius: BorderRadius.circular(10.0)),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar); // edited line
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      // appBar: AppBar(
      //     // backgroundColor: Colors.black,
      //     // title: Text("Login"),
      //     ),
      key: _scaffoldKey,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(1, 0.8),
            end:
                Alignment(0.8, 1), // 10% of the width, so there are ten blinds.
            colors: [
              const Color(0xff002423),
              const Color(0xffffff) //0xffffffff
            ], // red to yellow
            tileMode: TileMode.clamp, // repeats the gradient over the canvas
          ),
        ),
        // margin: EdgeInsets.only(top: 100.0, left: 10.0, right: 10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://d18l82el6cdm1i.cloudfront.net/solvable/8fcf27ea1b.8199ff1920.Pu19oS.jpg"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 50.0),
                  alignment: Alignment.topLeft,
                  child: Text(("Login").toUpperCase(),
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 50.0),
                  child: TextField(
                    style: TextStyle(color: Colors.green),
                    controller: this.emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                // Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),

                ListTile(
                  title: TextField(
                    style: TextStyle(color: Colors.green),
                    controller: this.passwordController,
                    // keyboardType: TextInputType.visiblePassword,
                    obscureText: isPasswordHidden,
                    decoration: InputDecoration(
                        counterStyle: TextStyle(color: Colors.white),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  trailing: IconButton(
                    onPressed: showHidePassword,
                    icon: Icon(
                      Icons.visibility,
                      color: Colors.white,
                    ),
                  ),
                ),

                // Container(
                //   child: TextField(
                //     style: TextStyle(color: Colors.green),
                //     controller: this.passwordController,
                //     // keyboardType: TextInputType.visiblePassword,
                //     obscureText: true,
                //     decoration: InputDecoration(
                //         counterStyle: TextStyle(color: Colors.white),
                //         labelText: "Password",
                //         labelStyle: TextStyle(color: Colors.white)),
                //   ),
                // ),
                Container(
                  alignment: Alignment.topRight,
                  child: MaterialButton(
                    onPressed: forgotPassword,
                    child: Text(
                      "Forgor Password?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                MaterialButton(
                  elevation: 6.0,
                  minWidth: 100.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  padding: EdgeInsets.all(10.0),
                  color: Colors.indigoAccent,
                  onPressed: () {
                    this.login(context);
                  },
                  child: Text(
                    ("login").toUpperCase(),
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RegisterScreen()));
        },
        child: Icon(Icons.add),
      ),
      bottomSheet: Container(
        margin: EdgeInsets.only(bottom: 20.0, left: 20.0),
        child: Text(
          "Terms & Conditions",
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
