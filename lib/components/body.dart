import 'package:flutter/material.dart';
import 'package:testapp/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //provides total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          // it will coveer only 20% of total height
          height: size.height * 0.2,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.2 - 27,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36))),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 54,
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(0.23),
                          )
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "جستجو",
                          hintStyle:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5))),
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}