import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:testapp/components/featured_plants.dart';
import 'package:testapp/screens/details/details_screen.dart';
import 'package:testapp/services/persian_numbers.dart';
import 'package:testapp/data/database.dart';
import 'package:testapp/services/plant.dart' as pClass;
import '../constants.dart';
import 'package:provider/provider.dart';

class RecomendsPlants extends StatelessWidget {
  DataBase provider;
  final pClass.Plant plant;
  RecomendsPlants({
    Key key,
    this.plant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // add a plan to database
    DataBase()
        .addPlant(new PlantData(
            id: null,
            country: "ایران",
            price: 300000,
            title: "بونسای",
            image: "assets/images/image_1.png"))
        .whenComplete(() => Navigator.of(context).pop());
    final database = Provider.of<DataBase>(context);

    return StreamBuilder(
      stream: database.watchAllPlants(),
      builder: (context, AsyncSnapshot<List<PlantData>> snapshot) {
        final plants = snapshot.data ?? List();

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
                  press: () {});
            },
          ),
        );
      },
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
    String priceText = PersianNumbers(price).replace();
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
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Vazir')),
                      TextSpan(
                          text: "$country",
                          style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                              fontFamily: 'Vazir'))
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
