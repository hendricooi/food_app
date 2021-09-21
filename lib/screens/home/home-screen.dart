import 'package:flutter/material.dart';
import 'package:food_app/components/drawer.dart';
import 'package:food_app/screens/body.dart';
import '../../components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      drawer: Drawertest(),
      body: Body(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [Text('Welcome,')],
        ),
      ),
    );
  }
}
