import 'package:flutter/material.dart';
import '../camera/camera_screen.dart';
import '../pages/home_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => MyHomePage(title: 'Flutter Home Page'),
          );
        }
        return _errorRoute();
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
