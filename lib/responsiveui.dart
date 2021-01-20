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
      width: deviceWidth / 2,
      height: deviceHeight / 2,
      color: Colors.orange,
    ));
  }

  Widget _buildWidgetContainerNormalScreen(deviceWidth, deviceHeight) {
    return Center(
      child: Container(
        height: deviceHeight / 2,
        width: deviceWidth / 2,
        color: Colors.blue,
      ),
    );
  }
}
