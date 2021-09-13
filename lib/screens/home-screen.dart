import 'package:flutter/material.dart';
import 'package:food_app/components/drawer.dart';
import 'package:food_app/screens/body.dart';
import 'app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      drawer: Drawertest(),
      body: Body(),
    );
  }
}
