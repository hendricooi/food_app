import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_app/constraints.dart';
import 'package:food_app/login/ForgetPassword.dart';
import 'package:food_app/services/auth_services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String error = '';
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final authService = Provider.of<AuthService>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100, bottom: 70),
                  child: Text(
                    "Sign In ",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100, bottom: 70),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Food",
                            style: TextStyle(
                              color: kSecondaryColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: "Combine",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        errorStyle: TextStyle(color: Colors.red),
                        labelText: "Email",
                      ),
                      validator: (value) {
                        if (value == null || value == '' || value.length < 12) {
                          return "Please provide a valid email";
                        }
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(8),
                    child: TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.red),
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value == null || value == '') {
                            return "Password cannot be empty";
                          }
                          if (value.length < 6) {
                            return "Password must be at least 6 chars";
                          }
                        }),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 180,
                  height: 70,
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.center,
                  child: SignInButtonBuilder(
                      icon: Icons.person_add,
                      backgroundColor: Colors.indigo,
                      text: 'Registration',
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      }),
                ),
                Container(
                  width: 180,
                  height: 70,
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.center,
                  child: SignInButtonBuilder(
                      icon: Icons.verified_user,
                      backgroundColor: Colors.orange,
                      text: 'Sign In',
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          try {
                            await authService.signInWithEmailAndPassword(
                                emailController.text, passwordController.text);
                          } on FirebaseAuthException catch (error) {
                            Fluttertoast.showToast(
                                msg: error.code, gravity: ToastGravity.TOP);
                          }
                        }
                      }),
                ),
              ],
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  ForgotPassword.id,
                );
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.blue[200], fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
