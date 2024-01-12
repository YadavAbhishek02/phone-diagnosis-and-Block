import 'package:diagnostic_android_application/Ui/HomePage.dart';
import 'package:diagnostic_android_application/Ui/batteryPage.dart';
import 'package:diagnostic_android_application/Ui/sensorPage.dart';
import 'package:flutter/material.dart';

import '../Ui/NetworkPage.dart';


class NavigationService {
  static Future navigateToHomeScreen(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  static Future navigateToSensorPage(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SensorPage()),
    );
  }

  static Future navigateToNetworkPage(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const NetworkPage()),
    );
  }

static Future navigateToBatteryPage(BuildContext context) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const BatteryPage()),
  );
}
}
