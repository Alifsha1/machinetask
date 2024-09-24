import 'package:flutter/material.dart';
import 'package:machinetask/core/style/colors/colors.dart';

class SubHeadings extends StatelessWidget {
  final String text;

  const SubHeadings({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.only(left: 20, top: 10),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
                color: kblack, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}