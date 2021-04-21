import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testapp/components/featured_plants.dart';
import 'package:testapp/components/recomend_plant_card.dart';
import 'package:testapp/components/title_with_more_btn.dart';
import 'package:testapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //provides total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // enables scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "محصولات پیشنهادی",
            press: () {},
          ),
          RecomendsPlants(),
          TitleWithMoreBtn(
            title: "محصولات شگفت‌انگیز",
            press: () {},
          ),
          FeatiredPlants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
