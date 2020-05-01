import 'package:Native_App/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  //text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        elevation: 0.0,
        title: Text('Sign in to Synergie'),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                widget.toggleView();
              },
              icon: Icon(Icons.person),
              label: Text('Register'))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Form(
            child: Column(children: <Widget>[
          SizedBox(height: 20),
          TextFormField(onChanged: (val) {
            setState(() => email = val);
          }),
          SizedBox(height: 20),
          TextFormField(
              obscureText: true,
              onChanged: (val) {
                setState(() => password = val);
              }),
          SizedBox(height: 20),
          RaisedButton(
              color: Colors.teal[50],
              child: Text(
                'Sign In',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () async {})
        ])),
      ),
    );
  }
}
