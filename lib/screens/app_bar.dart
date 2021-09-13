import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constraints.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .title!
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
              text: "Food",
              style: TextStyle(
                color: kSecondaryColor,
              )),
          TextSpan(
            text: "Combine",
            style: TextStyle(color: kPrimaryColor),
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
