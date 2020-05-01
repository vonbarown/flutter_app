import 'package:Native_App/screens/wrapper.dart';
import 'package:flutter/material.dart';
import '../camera/camera_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        // if (args is String) {
        return MaterialPageRoute(
          builder: (_) => Wrapper(),
        );
      // }
      // return _errorRoute();
      case '/second':
        return MaterialPageRoute(builder: (_) => CameraScreen());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
