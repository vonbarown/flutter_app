import 'package:flutter/material.dart';
import 'package:Native_App/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();

  //ensures that the form has valid inputs and is not empty
  final _formKey = GlobalKey<FormState>();

  //text field state
  String email = '';
  String password = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        elevation: 0.0,
        title: Text('Sign up to Synergie'),
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                widget.toggleView();
              },
              icon: Icon(Icons.person),
              label: Text('Sign In'))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Form(
            key: _formKey,
            child: Column(children: <Widget>[
              SizedBox(height: 20),
              TextFormField(
                  //checks to make sure email is not null
                  validator: (val) => val.isEmpty ? 'Enter an email' : null,
                  onChanged: (val) {
                    setState(() => email = val);
                  }),
              SizedBox(height: 20),
              TextFormField(
                  //places a length restrinction on the password
                  validator: (val) => val.length < 6
                      ? 'Enter a password six characters or more long'
                      : null,
                  obscureText: true,
                  onChanged: (val) {
                    setState(() => password = val);
                  }),
              SizedBox(height: 20),
              RaisedButton(
                  color: Colors.teal,
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    if (_formKey.currentState.validate()) {
                      dynamic result =
                          await _auth.registerWithEmailAndPass(email, password);

                      if (result == null) {
                        setState(
                            () => error = 'Please input valid credentials');
                      }
                    }
                  }),
              SizedBox(height: 12),
              Text(error, style: TextStyle(color: Colors.red, fontSize: 14))
            ])),
      ),
    );
  }
}
