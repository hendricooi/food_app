import 'package:flutter/material.dart';
import 'package:contactus/contactus.dart';

class Contactus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: Container(
            margin: EdgeInsets.only(top: 16),
            child: ContactUs(
              phoneNumberText: 'Phone Number',
              emailText: 'Email',
              companyName: 'FoodCombine',
              cardColor: Colors.blue,
              companyColor: Colors.white,
              taglineColor: Colors.black,
              textColor: Colors.black,
              logo: AssetImage("assets/icons/profile.jpg"),
              email: 'hendric2008@gmail.com',
              phoneNumber: '010-4643916',
              dividerThickness: 2,
              tagLine: 'Fyp Student',
            )));
  }
}
