import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testapp/constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
    this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.68,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  Spacer(),
                  IconCard(icon: "assets/icons/sun.svg"),
                  IconCard(icon: "assets/icons/icon_2.svg"),
                  IconCard(icon: "assets/icons/icon_3.svg"),
                  IconCard(icon: "assets/icons/icon_4.svg"),
                ],
              ),
            )),
            Container(
              height: size.height * 0.68,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(63),
                      bottomRight: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29))
                  ],
                  image: DecorationImage(
                      alignment: Alignment.centerRight,
                      fit: BoxFit.cover,
                      image: AssetImage(image))),
            )
          ],
        ),
      ),
    );
  }
}
