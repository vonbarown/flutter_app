import 'package:Native_App/screens/auth/auth.dart';
import 'package:Native_App/screens/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  // const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return screen dependent of the auth status
    return Authenticate();
  }
}
