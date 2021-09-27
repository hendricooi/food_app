import 'package:flutter/material.dart';
import 'package:food_app/screens/login.dart';

class ConfirmEmail extends StatelessWidget {
  static String id = 'confirm-email';
  final String message;

  const ConfirmEmail({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 150, 0, 40),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                message,
                style: TextStyle(color: Colors.black, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            )),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: FlatButton(
              child: Text('Back to Login Page'),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          )
        ],
      ),
    );
  }
}
