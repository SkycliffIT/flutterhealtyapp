import 'package:flutter/widgets.dart';
import 'package:loginregister/utills/device_screentype.dart';

class SizeInformation {
  final Orientation orientation;
  final DeviceScreenType deviceType;
  final Size screenSize;
  final Size localWidgetSize;

  SizeInformation(
      {this.orientation,
      this.deviceType,
      this.screenSize,
      this.localWidgetSize});

  @override
  String toString() {
    return 'Orientation:$orientation DeviceType:$deviceType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }
}
