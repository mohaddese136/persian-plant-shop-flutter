import 'package:flutter/material.dart';
import 'package:testapp/components/featured_plants.dart';
import 'package:testapp/screens/details/details_screen.dart';
import 'package:testapp/services/persian_numbers.dart';
import 'package:testapp/services/plant.dart';
import '../constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Plant> plants = [
      Plant(
          title: "بنیسا",
          country: "روسیه",
          price: 300000,
          image: "assets/images/image_1.png"),
      Plant(
          title: "سمنتا",
          country: "ایران",
          price: 500000,
          image: "assets/images/image_2.png"),
      Plant(
          title: "روزا",
          country: "هلند",
          price: 900000,
          image: "assets/images/image_3.png")
    ];
    return SizedBox(
      height: 318,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: plants.length,
          itemBuilder: (context, index) {
            return RecomendPlantCard(
                image: plants[index].image,
                title: plants[index].title,
                country: plants[index].country,
                price: plants[index].price,
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                                plant: plants[index],
                              )));
                });
          }),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String priceText = PersianNumbers(price.toString()).replace();
    return Container(
      margin: EdgeInsets.only(
          right: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      //it will cover only 40% of out total width
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "$title\n",
                          style: Theme.of(context).textTheme.button),
                      TextSpan(
                          text: "$country",
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                    ]),
                  ),
                  Spacer(),
                  Text(
                    "$priceText تومان",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
