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

  Future signInWithEmailAndPass(String email, String password) async {
    try {
      //firebase method to create user with email and password
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      FirebaseUser user = result.user;

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //register email/pass
  Future registerWithEmailAndPass(String email, String password) async {
    try {
      //firebase method to create user with email and password
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      FirebaseUser user = result.user;

      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //signing out
  Future signOut() async {
    try {
      //firebase method to log out
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
