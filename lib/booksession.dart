import 'package:flutter/material.dart';

import 'detailsPage.dart';

class BookSession extends StatefulWidget {
  @override
  _BookSessionState createState() => _BookSessionState();
}

class _BookSessionState extends State<BookSession> {
  void detailsPage(data) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DetailsPage(data)));
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var deviceHeight = mediaQuery.size.height;
    var deviceWidth = mediaQuery.size.width;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Book Session")),
      ),
      body: ListView(
        addAutomaticKeepAlives: true,
        // reverse: true,
        children: [
          Card(
            margin: EdgeInsets.all(14.0),
            elevation: 6.0,
            child: RaisedButton(
              color: Colors.white,
              onPressed: () {
                detailsPage(
                    "https://i.pinimg.com/originals/c7/ed/b3/c7edb3b8fc5d14ac64bc73ad11e64e15.gif");
              },
              child: Image.network(
                  "https://i.pinimg.com/originals/c7/ed/b3/c7edb3b8fc5d14ac64bc73ad11e64e15.gif"),
            ),
          ),
          Card(
            margin: EdgeInsets.all(14.0),
            elevation: 6.0,
            child: RaisedButton(
              color: Colors.white,
              onPressed: () {
                detailsPage(
                    "https://rogershipp.files.wordpress.com/2018/06/man_doing_yoga_gif_animation_loop.gif");
              },
              child: Image.network(
                  "https://rogershipp.files.wordpress.com/2018/06/man_doing_yoga_gif_animation_loop.gif"),
            ),
          ),
          Card(
            margin: EdgeInsets.all(14.0),
            elevation: 6.0,
            child: RaisedButton(
              color: Colors.white,
              onPressed: () {
                detailsPage(
                    "https://i.pinimg.com/originals/c7/ed/b3/c7edb3b8fc5d14ac64bc73ad11e64e15.gif");
              },
              child: Image.network(
                  "https://i.pinimg.com/originals/c7/ed/b3/c7edb3b8fc5d14ac64bc73ad11e64e15.gif"),
            ),
          ),
          Card(
            margin: EdgeInsets.all(14.0),
            elevation: 6.0,
            child: RaisedButton(
              color: Colors.white,
              onPressed: () {
                detailsPage(
                    "https://rogershipp.files.wordpress.com/2018/06/man_doing_yoga_gif_animation_loop.gif");
              },
              child: Image.network(
                  "https://rogershipp.files.wordpress.com/2018/06/man_doing_yoga_gif_animation_loop.gif"),
            ),
          ),
          Card(
            margin: EdgeInsets.all(14.0),
            elevation: 6.0,
            child: RaisedButton(
              color: Colors.white,
              onPressed: () {
                detailsPage(
                    "https://i.pinimg.com/originals/c7/ed/b3/c7edb3b8fc5d14ac64bc73ad11e64e15.gif");
              },
              child: Image.network(
                  "https://i.pinimg.com/originals/c7/ed/b3/c7edb3b8fc5d14ac64bc73ad11e64e15.gif"),
            ),
          ),
          Card(
            margin: EdgeInsets.all(14.0),
            elevation: 6.0,
            child: RaisedButton(
              color: Colors.white,
              onPressed: () {
                detailsPage(
                    "https://rogershipp.files.wordpress.com/2018/06/man_doing_yoga_gif_animation_loop.gif");
              },
              child: Image.network(
                  "https://rogershipp.files.wordpress.com/2018/06/man_doing_yoga_gif_animation_loop.gif"),
            ),
          ),
        ],
      ),
    );
  }
}
