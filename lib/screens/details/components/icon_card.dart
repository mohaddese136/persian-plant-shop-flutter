import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testapp/constants.dart';

class IconCard extends StatelessWidget {
  final String icon;
  String text;
  String image;

  IconCard({Key key, this.icon, this.text = "", this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FlipCard(
      direction: FlipDirection.HORIZONTAL, // default
      front: Container(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
          padding: EdgeInsets.all(kDefaultPadding / 2),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 22,
                    color: kPrimaryColor.withOpacity(0.22)),
                BoxShadow(
                  offset: Offset(-15, -15),
                  blurRadius: 20,
                  color: Colors.white,
                )
              ]),
          child: SvgPicture.asset(icon),
        ),
      ),
      back: Container(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: size.height * 0.01),
          padding: EdgeInsets.all(kDefaultPadding / 2),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 22,
                    color: kPrimaryColor.withOpacity(0.22)),
                BoxShadow(
                  offset: Offset(-15, -15),
                  blurRadius: 20,
                  color: Colors.white,
                )
              ]),
          child: text != ""
              ? Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              : SvgPicture.asset(image),
        ),
      ),
    );
  }
}
