import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machinetask/core/style/colors/colors.dart';

class ViewBackSideButton extends StatelessWidget {
  const ViewBackSideButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.refresh,
            color: kblue5,
          ),
          Text(
            'View Back Side',
            style: TextStyle(
                color: kblue5,
                fontWeight: FontWeight.bold,
                fontSize: 13),
          )
        ],
      ),
    );
  }
}
