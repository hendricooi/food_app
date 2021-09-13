
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/constraints.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
       leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg")
      ),
        title: RichText(
          text: TextSpan(
          children: [
            TextSpan(
                text:"Food",
                style: TextStyle(color: kSecondaryColor),
            ),
          TextSpan(text:"Combine",
              style: TextStyle(color: kPrimaryColor),
          )
          ],
        ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed:(){},
              icon: SvgPicture.asset("assets/icons/notifications.svg" ),
          )
        ],
    ),
    );
  }
}
