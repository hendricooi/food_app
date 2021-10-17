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
import 'package:food_app/screens/fooditems/2pc.dart';
import 'package:food_app/screens/fooditems/3pc.dart';
import 'package:food_app/screens/fooditems/GCB.dart';
import 'package:food_app/screens/fooditems/a1.dart';
import 'package:food_app/screens/fooditems/a3.dart';
import 'package:food_app/screens/fooditems/a7.dart';
import 'package:food_app/screens/fooditems/bawang.dart';
import 'package:food_app/screens/fooditems/canai.dart';
import 'package:food_app/screens/fooditems/caramelfrap.dart';
import 'package:food_app/screens/fooditems/caramellatte.dart';
import 'package:food_app/screens/fooditems/chicken.dart';
import 'package:food_app/screens/fooditems/classicpizza.dart';
import 'package:food_app/screens/fooditems/double.dart';
import 'package:food_app/screens/fooditems/extrapizza.dart';
import 'package:food_app/screens/fooditems/greeteafrap.dart';
import 'package:food_app/screens/fooditems/guotiao.dart';
import 'package:food_app/screens/fooditems/handpacked.dart';
import 'package:food_app/screens/fooditems/javachip.dart';
import 'package:food_app/screens/fooditems/lemonjelly.dart';
import 'package:food_app/screens/fooditems/mcchicken.dart';
import 'package:food_app/screens/fooditems/meatpizza.dart';
import 'package:food_app/screens/fooditems/milky.dart';
import 'package:food_app/screens/fooditems/mix.dart';
import 'package:food_app/screens/fooditems/mocha.dart';
import 'package:food_app/screens/fooditems/mt01.dart';
import 'package:food_app/screens/fooditems/mt02.dart';
import 'package:food_app/screens/fooditems/mt03.dart';
import 'package:food_app/screens/fooditems/penang.dart';
import 'package:food_app/screens/fooditems/premium.dart';
import 'package:food_app/screens/fooditems/signature.dart';
import 'package:food_app/screens/fooditems/single.dart';
import 'package:food_app/screens/fooditems/spicy.dart';
import 'package:food_app/screens/fooditems/telur.dart';
import 'package:food_app/screens/fooditems/vanillacookie.dart';
import 'package:food_app/screens/fooditems/wing.dart';

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
  final recentRestaurants = [
    "McDonald's",
    "McChicken",
    "Blackball",
    "Java Chip Frappuccino"
  ];
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
        "2-pc Combo",
    "3-pc Combo",
    "Signature Box",
    "GCB",
    "McChicken",
    "Spicy Chicken McDeluxe",
    "Clasic Chicken Pizza",
    "Extravaganzza Pizza",
    "Meat Mania Pizza",
    "Signature Brown Sugar Milk Tea",
    "Original Pearl Milk Tea",
    "Clasic Roasted Milk Tea with Grass Jelly",
    "Vanilla Cookies & Cream Ice Blended",
    "The Original Mocha",
    "Caramel Lattee",
    "Java Chip Frappuccino",
    "Green Tea Frappuccino",
    "Caramel Frappuccino",
    "Blackball Signature",
    "Golden Sweet Corn Delight",
    "Signatere Jade Jelly",
    "MTY Mix",
    "MTY Milky",
    "Lemon Jelly",
    "Handpacked Quartz",
    "Double Regular Scoop Ice Cream",
    "Single Regular Scoop Ice Cream",
    "Premium Bihun Soup",
    "Guo Tiao Tang",
    "Penang Bihun",
    "Roasted Chicken Rice",
    "Roasted Chickdn Wing Rice",
    "Roasted Sausage Rice",
    "Roti Canai",
    "Roti Telur",
    "Roti Telur Bawang"
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
                    if (query == "McChicken") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => McChicken()));
                    }
                    if (query == "Spicy Chicken McDeluxe") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Spicy()));
                    }
                    if (query == "GCB") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GCB()));
                    }
                    if (query == "3-pc Combo") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => threepc()));
                    }
                    if (query == "2-pc Combo") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => twopiece()));
                    }
                    if (query == "Signature Box") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signature()));
                    }
                    if (query == "Classic Chicken Pizza") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClassicPizza()));
                    }
                    if (query == "Extravaganzza Pizza") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExtraPizza()));
                    }
                    if (query == "Meat Mania Pizza") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MeatPizza()));
                    }
                    if (query == "Signature Brown Sugar Milk Tea") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MT01()));
                    }
                    if (query == "Original Pearl Milk Tea") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MT02()));
                    }
                    if (query == "Classic Roasted Milk Tea with Grass Jelly") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MT03()));
                    }
                    if (query == "Vanilla Cookies & Cream Ice Blended") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Vanilla()));
                    }
                    if (query == "The Original Mocha") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mocha()));
                    }
                    if (query == "Caramel Lattee") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CaramelLatte()));
                    }
                    if (query == "Java Chip Frappuccino") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => JavaChip()));
                    }
                    if (query == "Green Tea Frappuccino") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GreenTeaFrap()));
                    }
                    if (query == "Caramel Frappuccino") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CaramelFrap()));
                    }
                    if (query == "Blackball Signature") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => A1()));
                    }
                    if (query == "Golden Sweet Corn Delight") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => A3()));
                    }
                    if (query == "Signature Jade Jelly") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => A7()));
                    }
                    if (query == "MTY Mix") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mix()));
                    }
                    if (query == "MTY Milky") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Milky()));
                    }
                    if (query == "Lemon Jelly") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LemonJelly()));
                    }
                    if (query == "Handpacked Quartz") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HandPacked()));
                    }
                    if (query == "Double Regular Scoop Ice Cream") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Double()));
                    }
                    if (query == "Single Regular Scoop Ice Cream") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Single()));
                    }
                    if (query == "Guo Tiao Tang") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GuoTiao()));
                    }
                    if (query == "Premium Bihun Soup") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Premium()));
                    }
                    if (query == "Penang Bihun") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Penang()));
                    }
                    if (query == "Roasted Chicken Rice") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chicken()));
                    }
                    if (query == "Roasted Chicken Wing Rice") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Wing()));
                    }
                    if (query == "Roti Canai") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Canai()));
                    }
                    if (query == "Roti Telur") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Telur()));
                    }
                    if (query == "Roti Telur Bawang") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Bawang()));
                    }
                  },
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
                    if (query == "McChicken") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => McChicken()));
                    }
                    if (query == "Spicy Chicken McDeluxe") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Spicy()));
                    }
                    if (query == "GCB") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GCB()));
                    }
                    if (query == "3-pc Combo") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => threepc()));
                    }
                    if (query == "2-pc Combo") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => twopiece()));
                    }
                    if (query == "Signature Box") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signature()));
                    }
                    if (query == "Classic Chicken Pizza") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClassicPizza()));
                    }
                    if (query == "Extravaganzza Pizza") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExtraPizza()));
                    }
                    if (query == "Meat Mania Pizza") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MeatPizza()));
                    }
                    if (query == "Signature Brown Sugar Milk Tea") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MT01()));
                    }
                    if (query == "Original Pearl Milk Tea") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MT02()));
                    }
                    if (query == "Classic Roasted Milk Tea with Grass Jelly") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MT03()));
                    }
                    if (query == "Vanilla Cookies & Cream Ice Blended") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Vanilla()));
                    }
                    if (query == "The Original Mocha") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mocha()));
                    }
                    if (query == "Caramel Lattee") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CaramelLatte()));
                    }
                    if (query == "Java Chip Frappuccino") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => JavaChip()));
                    }
                    if (query == "Green Tea Frappuccino") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GreenTeaFrap()));
                    }
                    if (query == "Caramel Frappuccino") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CaramelFrap()));
                    }
                    if (query == "Blackball Signature") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => A1()));
                    }
                    if (query == "Golden Sweet Corn Delight") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => A3()));
                    }
                    if (query == "Signature Jade Jelly") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => A7()));
                    }
                    if (query == "MTY Mix") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mix()));
                    }
                    if (query == "MTY Milky") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Milky()));
                    }
                    if (query == "Lemon Jelly") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LemonJelly()));
                    }
                    if (query == "Handpacked Quartz") {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HandPacked()));
                    }
                    if (query == "Double Regular Scoop Ice Cream") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Double()));
                    }
                    if (query == "Single Regular Scoop Ice Cream") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Single()));
                    }
                    if (query == "Guo Tiao Tang") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GuoTiao()));
                    }
                    if (query == "Premium Bihun Soup") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Premium()));
                    }
                    if (query == "Penang Bihun") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Penang()));
                    }
                    if (query == "Roasted Chicken Rice") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chicken()));
                    }
                    if (query == "Roasted Chicken Wing Rice") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Wing()));
                    }
                    if (query == "Roti Canai") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Canai()));
                    }
                    if (query == "Roti Telur") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Telur()));
                    }
                    if (query == "Roti Telur Bawang") {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Bawang()));
                    }
                  },
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
