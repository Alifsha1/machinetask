import 'package:flutter/material.dart';
import 'package:machinetask/core/style/colors/colors.dart';

class Heading extends StatelessWidget {
  final String heading;
  final FontWeight fontWeight;
  const Heading({
    super.key, required this.heading, required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
          color: kwhite,
          fontWeight: fontWeight,
          fontFamily: 'Raleway',
          fontSize: 20),
    );
  }
}