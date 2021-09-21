import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:food_app/constraints.dart';
import 'package:food_app/services/auth_services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final authService = Provider.of<AuthService>(context);
    final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  "Register into ",
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
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
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                )),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: "Password",
                )),
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
                    icon: Icons.keyboard_backspace,
                    backgroundColor: Colors.grey,
                    text: 'Back',
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              Container(
                width: 180,
                height: 70,
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                child: SignInButtonBuilder(
                    icon: Icons.add_circle_outline_rounded,
                    backgroundColor: Colors.orange,
                    text: 'Register',
                    onPressed: () {
                      authService.registerWithEmailAndPassword(
                          emailController.text, passwordController.text);
                      Navigator.pop(context);
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
