import 'package:Native_App/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  //will not chnage in the future
  final FirebaseAuth _auth =
      FirebaseAuth.instance; //private property for firebase auth instance

  //create user object basex on firebase user
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  //auth change stream
  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

  //sign in anon
  Future signInAnon() async {
    //promise
    try {
      //auth result object return type
      AuthResult result = await _auth.signInAnonymously(); //anon sign in method

      //assigning firebase user object
      FirebaseUser user = result.user;

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
  //sign in email/pass

  //register email/pass

}
