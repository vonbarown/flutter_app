import 'package:Native_App/models/user.dart';
import 'package:Native_App/screens/auth/auth.dart';
import 'package:Native_App/screens/home/home.dart';
import 'package:Native_App/screens/onbaording_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatefulWidget {
  Wrapper({Key key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  bool onBoarding = true;

  void toggleOnBoarding() {
    setState(() => onBoarding = false);
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null) {
      return Authenticate();
    } else {
      if (onBoarding) {
        return OnboardingScreen(toggleOnBoarding: toggleOnBoarding);
      } else {
        return Home();
      }
    }
  }
}
// class Wrapper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final user = Provider.of<User>(context);
//     print(user);

//     // return screen dependent of the auth status
//     if (user == null) {
//       return Authenticate();
//     } else {
//       return OnboardingScreen();
//     }
//   }
// }
