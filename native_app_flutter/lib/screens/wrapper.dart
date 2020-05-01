import 'package:Native_App/models/user.dart';
import 'package:Native_App/screens/auth/auth.dart';
import 'package:Native_App/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    // return screen dependent of the auth status
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
