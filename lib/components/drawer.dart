import 'package:flutter/material.dart';
import 'package:food_app/screens/drawer/contactus.dart';
import 'package:food_app/screens/drawer/aboutus.dart';
import 'package:food_app/services/auth_services.dart';
import 'package:provider/provider.dart';

class Drawertest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Drawer(
        child: ListView(children: [
      ListTile(
        title: const Text('Contact Us'),
        onTap: () {
          // Update the state of the app
          // ...
          // Then close the drawer
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Contactus()),
          );
        },
      ),
      ListTile(
        title: const Text('About Us'),
        onTap: () {
          // Update the state of the app
          // ...
          // Then close the drawer
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Aboutus()),
          );
        },
      ),
    ]));
  }
}
