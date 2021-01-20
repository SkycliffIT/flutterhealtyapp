import 'package:flutter/widgets.dart';
import 'package:loginregister/utills/device_screentype.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;
  double deviceWidth = 0;
  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.width;
  } else {
    deviceWidth = mediaQuery.size.width;
  }

  // Desktop
  if (deviceWidth > 950) {
    return DeviceScreenType.Desktop;
  }

  // Tablet
  if (deviceWidth > 950) {
    return DeviceScreenType.Tablet;
  }
  // Mobile
  return DeviceScreenType.Mobile;
}
