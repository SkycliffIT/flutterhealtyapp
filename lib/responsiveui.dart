import 'package:flutter/material.dart';
import './utills/device_type.dart';
import './utills/size_information.dart';

class Responsiveui extends StatelessWidget {
  // final Widget Function(BuildContext context, SizeInformation sizeInformation)
  //     builder; //custom builer
  // const Responsiveui({Key key, this.builder});

  // @override
  // Widget build(BuildContext context) {
  //   var mediaquery = MediaQuery.of(context);
  //   return LayoutBuilder(builder: (context, boxSizing) {
  //     var sizeInfo = SizeInformation(
  //       orientation: mediaquery.orientation,
  //       deviceType: getDeviceType(mediaquery),
  //       screenSize: mediaquery.size,
  //       localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight),
  //     );
  //     return builder(context, sizeInfo);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var deviceHeight = mediaQuery.size.height;
    var deviceWidth = mediaQuery.size.width;
    // var orientation = mediaQuery.orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive UI"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWidgetContainerLargeScreen(deviceWidth, deviceHeight);
          } else {
            return _buildWidgetContainerNormalScreen(deviceWidth, deviceHeight);
          }
        },
      ),
    );
  }

  Widget _buildWidgetContainerLargeScreen(deviceWidth, deviceHeight) {
    return Center(
      child: Container(
        // width: deviceWidth - 100,
        // height: deviceHeight / 2,
        color: Colors.orange,
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: const Text(
                  "He'd have you all unravel at the",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: const Text(
                  'Heed not the rabble',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              color: Colors.teal[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: const Text(
                  'Sound of screams but the',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              color: Colors.teal[300],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: const Text(
                  'Who scream',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              color: Colors.teal[400],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: const Text(
                  'Revolution is coming...',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              color: Colors.teal[500],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: const Text(
                  'Revolution, they...',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              color: Colors.teal[600],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWidgetContainerNormalScreen(deviceWidth, deviceHeight) {
    return Center(
      child: Container(
        color: Colors.orange,
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: const Text(
                  "He'd have you all unravel at the",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: const Text(
                  'Heed not the rabble',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              color: Colors.teal[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: const Text(
                  'Sound of screams but the',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              color: Colors.teal[300],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: const Text(
                  'Who scream',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              color: Colors.teal[400],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: const Text(
                  'Revolution is coming...',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              color: Colors.teal[500],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: const Text(
                  'Revolution, they...',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              color: Colors.teal[600],
            ),
          ],
        ),
      ),
    );
  }
}
