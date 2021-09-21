import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/components/drawer.dart';

import '../constraints.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: "Food",
              style: TextStyle(
                color: kSecondaryColor,
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
            text: "Combine",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/icons/notification.svg"),
      )
    ],
  );
}
