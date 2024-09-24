import 'package:flutter/material.dart';
import 'package:machinetask/core/constants/constants.dart';
import 'package:machinetask/core/style/colors/colors.dart';

class ManageCardSec extends StatelessWidget {
  const ManageCardSec({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mediawidth = MediaQuery.of(context).size.width;
    final mediaheight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 15),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 16, 39, 97),
                borderRadius: BorderRadius.circular(6)),
            child: const Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 43, right: 43),
              child: Row(
                children: [
                  Icon(
                    Icons.credit_card,
                    color: kwhite,
                  ),
                  kwidht10,
                  Text(
                    'Manage Card',
                    style: TextStyle(color: kwhite),
                  )
                ],
              ),
            ),
          ),
          kwidht20,
          Container(
            width: mediawidth * .36,
            height: 35,
            decoration: BoxDecoration(
                color: kwhite,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                    color: const Color.fromARGB(255, 16, 39, 97), width: 1)),
            child: const Padding(
              padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.share,
                    color: Color.fromARGB(255, 16, 39, 97),
                  ),
                  Text(
                    'Share Digital',
                    style: TextStyle(color: Color.fromARGB(255, 16, 39, 97)),
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
