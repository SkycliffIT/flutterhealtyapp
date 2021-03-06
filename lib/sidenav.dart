import 'package:flutter/material.dart';
import 'package:loginregister/doctor.dart';
import './home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SideNav extends StatefulWidget {
  String firstName;
  String lastName;
  String mailId;
  SideNav(this.firstName, this.lastName, this.mailId);
  @override
  _SideNavState createState() =>
      _SideNavState(this.firstName, this.lastName, this.mailId);
}

class _SideNavState extends State<SideNav> {
  String _firstName;
  String _lastName;
  String _mailId;
  _SideNavState(this._firstName, this._lastName, this._mailId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: HomeScreen(),
      drawer: Builder(
        builder: (context) => Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                otherAccountsPictures: [],
                currentAccountPicture: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKGQHa6WkBnTdHFI7ZsODlxNsTSkTht3bMEA&usqp=CAU"),
                ),
                accountName: Text("Shivu"),
                accountEmail: Text(this._mailId),
                arrowColor: Colors.black,
              ),
              // DrawerHeader(
              //   child: Text(
              //     "Profile",
              //     style: TextStyle(color: Colors.white),
              //   ),
              //   decoration: BoxDecoration(color: Colors.redAccent),
              // ),
              ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: () {
                    // HomeScreen(this._firstName, this._lastName, this._mailId);
                    Navigator.pushNamed(context, "/home");
                  }),
              ListTile(
                leading: Icon(Icons.message),
                title: Text("BMI"),
                onTap: () {
                  Scaffold.of(context).showSnackBar(
                      SnackBar(content: Text('Navigating to BMI Screen')));
                  Navigator.pushNamed(context, "/bmi");
                },
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text("Session"),
                onTap: () {
                  Navigator.pushNamed(context, "/booksession");
                },
              ),
              ListTile(
                leading: Icon(Icons.design_services),
                title: Text("Responsive"),
                onTap: () {
                  Navigator.pushNamed(context, "/responsiveui");
                },
              ),
              ListTile(
                leading: Icon(Icons.design_services),
                title: Text("Today Design"),
                onTap: () {
                  Navigator.pushNamed(context, "/details");
                },
              ),
              ListTile(
                leading: Icon(Icons.info_rounded),
                title: Text("AboutUs"),
                onTap: () {
                  Navigator.pushNamed(context, "/aboutus");
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("LogOut"),
                onTap: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  pref.remove("userInfo");
                  Navigator.pushNamedAndRemoveUntil(context, "/", (r) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
