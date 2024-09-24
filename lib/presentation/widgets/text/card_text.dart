import 'package:flutter/cupertino.dart';
import 'package:machinetask/core/style/colors/colors.dart';

class CardText extends StatelessWidget {
  final String text;
  final double fontsize;
  final String fontfamily;
  final FontWeight fontWeight;
  const CardText({
    super.key,
    required this.text,
    required this.fontsize,
    required this.fontWeight, required this.fontfamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: kwhite,
          fontFamily: fontfamily,
          fontSize: fontsize,
          fontWeight: fontWeight),
    );
  }
}
