import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/services/plant.dart';
import 'icon_card.dart';
import 'image_and_icons.dart';
import 'title_and_pricing.dart';

class Body extends StatelessWidget {
  final Plant plant;
  const Body({Key key, @required this.plant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(
            image: plant.image,
          ),
          TitleAndPricing(
            title: plant.title,
            country: plant.country,
            price: plant.price,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "خرید",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(20)))),
                ),
              ),
              Expanded(
                  child: TextButton(
                onPressed: () {},
                child: Text(
                  "توضیحات",
                  style: TextStyle(color: Colors.black),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
