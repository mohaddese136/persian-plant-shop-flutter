import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/data/database.dart';
import 'package:testapp/services/plant.dart' as pClass;
import 'icon_card.dart';
import 'image_and_icons.dart';
import 'title_and_pricing.dart';

class Body extends StatelessWidget {
  final pClass.Plant plant;
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
                height: 50,
                child: TextButton(
                  onPressed: () {
                    DataBase()
                        .addPlant(new PlantData(
                            id: null,
                            country: "ایران",
                            price: 300000,
                            title: "گل خوشگل",
                            image: "assets/images/bottom_img_1.png"))
                        .whenComplete(() => Navigator.of(context).pop());
                  },
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
