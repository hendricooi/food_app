import 'package:flutter/material.dart';
import 'package:food_app/components/offerdetails.dart';

class Foodpandainfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )),
        child: Column(
          children: <Widget>[
            offerdetails("assets/icons/megaphone.PNG", "Epic Deals",
                "Treat yourself to discounts of 50% off by browsing through the Epic Deals list, with promos that change daily and are available from Monday to Saturday. Choose from a wide array of flavors from your go-to local eateries or chain restaurants, including coffee and milk tea spots! Since most deals are too irresistible to ignore, why not find new discoveries in your own neighborhood and satisfy your craving at the same without breaking the bank? Just make sure to check the app daily to find out the day’s most epic deals!"),
            offerdetails("assets/icons/bahai.PNG", "Bright Deals",
                "Stuck in an ordering rut? Try different variations of your favorite dishes from nearby restaurants or explore a new cuisine any day of the week at 20% off and more from featured restaurant promos. Whatever you’re in the mood for, excite your taste buds by browsing through the Bright Deals list and make great food discoveries without overspending your budget."),
            offerdetails("assets/icons/fdelivery.PNG", "Free Delivery",
                "Both new and existing users will surely enjoy free delivery from select restaurants, with your friendly foodpanda riders safely taking care of your orders while you wait. Use the “free delivery” filter when you search for your next food order or tap Free Delivery on the app restaurant page."),
          ],
        ),
      ),
    );
  }
}
