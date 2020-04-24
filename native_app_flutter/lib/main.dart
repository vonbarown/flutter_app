import 'package:flutter/material.dart';
import './homePage/home_page.dart';

class CameraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MyHomePage(title: 'Flutter Home Page'),
    );
  }
}

void main() => runApp(CameraApp());