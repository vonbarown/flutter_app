import 'package:flutter/material.dart';
import './pages/home_page.dart';
import './camera/camera_screen.dart';

class CameraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Flutter Home Page'),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
                builder: (context) => MyHomePage(title: 'Flutter Home Page'));
            break;
          case '/second':
            return MaterialPageRoute(builder: (context) => CameraScreen());
          default:
        }
      },
    );
  }
}

void main() => runApp(CameraApp());
