import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  //will not chnage in the future
  final FirebaseAuth _auth =
      FirebaseAuth.instance; //private property for firebase auth instance

  //sign in anon
  Future signInAnon() async {
    //promise
    try {
      //auth result object return type
      AuthResult result = await _auth.signInAnonymously(); //anon sign in method

      //assigning firebase user object
      FirebaseUser user = result.user;

      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //sign in email/pass

  //register email/pass

}
