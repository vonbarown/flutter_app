import 'package:Native_App/models/user.dart';
import 'package:Native_App/screens/onbaording_screen.dart';
import 'package:Native_App/screens/wrapper.dart';
import 'package:Native_App/services/auth.dart';
import 'package:Native_App/utils/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import './pages/home_page.dart';
// import './camera/camera_screen.dart';

// class Synergie extends StatefulWidget {
//   Synergie({Key key}) : super(key: key);

//   @override
//   _SynergieState createState() => _SynergieState();
// }

// class _SynergieState extends State<Synergie> {
//   @override
//   Widget build(BuildContext context) {
//     return StreamProvider<User>.value(
//       value: AuthService().user,
//       child: MaterialApp(
//         home: Wrapper(),
//         initialRoute: '/',
//         onGenerateRoute: RouteGenerator.generateRoute,
//       ),
//     );
//   }
// }
class Synergie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}

void main() => runApp(Synergie());
