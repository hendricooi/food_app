import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:food_app/screens/Restaurant/DessertRes/Baskin.dart';
import 'package:food_app/screens/Restaurant/DessertRes/Blackball.dart';
import 'package:food_app/screens/Restaurant/DessertRes/Mat.dart';
import 'package:food_app/screens/Restaurant/DrinksRes/Coffeebean.dart';
import 'package:food_app/screens/Restaurant/DrinksRes/Starbucks.dart';
import 'package:food_app/screens/Restaurant/DrinksRes/Tealive.dart';
import 'package:food_app/screens/Restaurant/FastFoodRes/Dominos.dart';
import 'package:food_app/screens/Restaurant/FastFoodRes/Kfc.dart';
import 'package:food_app/screens/Restaurant/FastFoodRes/Mcd.dart';
import 'package:food_app/screens/Restaurant/LocalRes/Kimpoh.dart';
import 'package:food_app/screens/Restaurant/LocalRes/Pelita.dart';
import 'package:food_app/screens/Restaurant/LocalRes/Village.dart';

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
        onPressed: () {
          showSearch(context: context, delegate: DataSearch());
        },
        icon: Icon(Icons.search, color: Colors.black),
      )
    ],
  );
}

class DataSearch extends SearchDelegate<String> {
  final recentRestaurants = ["McDonald's", "Tealive", "Blackball"];
  final restaurant = [
    "McDonald's",
    "KFC",
    "Domino's Pizza",
    "Tealive",
    "Starbucks",
    "Coffee Bean",
    "Blackball",
    "Baskin Robbins",
    "Mat Toh Yau",
    "Kim Poh",
    "Pelita",
    "7 Village"
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentRestaurants
        : restaurant.where((r) => r.startsWith(query)).toList();
    return suggestionList.isEmpty
        ? Text('No results found', style: TextStyle(fontSize: 20))
        : ListView.builder(
            itemCount: suggestionList.length,
            itemBuilder: (context, index) {
              return ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    if (query == "KFC") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Kfc()));
                    }
                    if (query == "McDonald's") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mcd()));
                    }
                    if (query == "Domino's Pizza") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dominos()));
                    }
                    if (query == "Tealive") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Tealive()));
                    }
                    if (query == "Starbucks") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Starbucks()));
                    }
                    if (query == "Coffee Bean") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Coffeebean()));
                    }
                    if (query == "Blackball") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Blackball()));
                    }
                    if (query == "Mat Toh Yau") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mat()));
                    }
                    if (query == "7 Village") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Village()));
                    }
                    if (query == "Pelita") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pelita()));
                    }
                    if (query == "Baskin Robbins") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Baskin()));
                    }
                    if (query == "Baskin Robbins") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Kimpoh()));
                    }
                  },
                  leading: Icon(Icons.fastfood_outlined),
                  title: RichText(
                      text: TextSpan(
                          text:
                              suggestionList[index].substring(0, query.length),
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                            text: suggestionList[index].substring(query.length),
                            style: TextStyle(color: Colors.grey))
                      ])));
            });
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentRestaurants
        : restaurant.where((r) => r.startsWith(query)).toList();
    return suggestionList.isEmpty
        ? Text('No results found', style: TextStyle(fontSize: 20))
        : ListView.builder(
            itemCount: suggestionList.length,
            itemBuilder: (context, index) {
              return ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    if (query == "KFC") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Kfc()));
                    }
                    if (query == "McDonald's") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mcd()));
                    }
                    if (query == "Domino's Pizza") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Dominos()));
                    }
                    if (query == "Tealive") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Tealive()));
                    }
                    if (query == "Starbucks") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Starbucks()));
                    }
                    if (query == "Coffee Bean") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Coffeebean()));
                    }
                    if (query == "Blackball") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Blackball()));
                    }
                    if (query == "Mat Toh Yau") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mat()));
                    }
                    if (query == "7 Village") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Village()));
                    }
                    if (query == "Pelita") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Pelita()));
                    }
                    if (query == "Baskin Robbins") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Baskin()));
                    }
                    if (query == "Baskin Robbins") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Kimpoh()));
                    }
                  },
                  leading: Icon(Icons.fastfood_outlined),
                  title: RichText(
                      text: TextSpan(
                          text:
                              suggestionList[index].substring(0, query.length),
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          children: [
                        TextSpan(
                            text: suggestionList[index].substring(query.length),
                            style: TextStyle(color: Colors.grey))
                      ])));
            });
  }
}
