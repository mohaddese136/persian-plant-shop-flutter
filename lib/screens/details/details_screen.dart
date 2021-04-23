import 'package:flutter/material.dart';
import 'package:testapp/screens/details/components/body.dart';
import 'package:testapp/services/plant.dart';

class DetailsScreen extends StatelessWidget {
  final Plant plant;

  const DetailsScreen({Key key, this.plant}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        plant: plant,
      ),
    );
  }
}
