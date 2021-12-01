import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_app/login/ConfirmEmail.dart';
import 'package:food_app/login/login.dart';

class ForgotPassword extends StatefulWidget {
  static String id = 'forgot-password';
  final String message =
      "An email has just been sent to you, Click the link provided to complete password reset.";

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _auth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();
  late String _email;

  _passwordReset() async {
    try {
      _formKey.currentState!.save();
      final user = await _auth.sendPasswordResetEmail(email: _email);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return ConfirmEmail(message: widget.message);
        }),
      );
    } catch (e) {
      Fluttertoast.showToast(
          msg: "Email is empty",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.red,
          fontSize: 14.0);
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Reset Password using Email',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              TextFormField(
                onSaved: (newEmail) {
                  _email = newEmail!;
                },
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Email',
                  icon: Icon(
                    Icons.mail,
                    color: Colors.black,
                  ),
                  errorStyle: TextStyle(color: Colors.red),
                  labelStyle: TextStyle(color: Colors.black),
                  hintStyle: TextStyle(color: Colors.black),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text('Send Email'),
                onPressed: () {
                  _passwordReset();
                  print(_email);
                },
              ),
              TextButton.icon(
                icon: Icon(Icons.backspace_outlined),
                label: Text('Sign In'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
              // FlatButton(
              //   child: Text('Sign In'),
              //   onPressed: () {
              //     Navigator.of(context).pop();
              //   },
              // )
            ],
          ),
        ),
      ),
    );
  }
}
