import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';
import 'package:testapp/services/persian_numbers.dart';

class TitleAndPricing extends StatelessWidget {
  const TitleAndPricing({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    String priceText = PersianNumbers(price).replace();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "$title\n",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kTextColor, fontWeight: FontWeight.bold)),
            TextSpan(
                text: "$country",
                style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300))
          ])),
          Spacer(),
          Text(
            "$priceText تومان",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
