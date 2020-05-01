import 'package:Native_App/screens/wrapper.dart';
import 'package:Native_App/utils/route_generator.dart';
import 'package:flutter/material.dart';
// import './pages/home_page.dart';
// import './camera/camera_screen.dart';

class CameraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Wrapper(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      // onGenerateRoute: (RouteSettings settings) {
      //   // switch (settings.name) {
      //   //   case '/':
      //   //     return MaterialPageRoute(
      //   //         builder: (context) => MyHomePage(title: 'Flutter Home Page'));
      //   //     break;
      //   //   case '/second':
      //   //     return MaterialPageRoute(builder: (context) => CameraScreen());
      //   //   default:
      //   // }
      // },
    );
  }
}

void main() => runApp(CameraApp());
