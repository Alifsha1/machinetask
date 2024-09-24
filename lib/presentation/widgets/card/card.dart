import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machinetask/core/style/colors/colors.dart';
import 'package:machinetask/presentation/widgets/text/card_text.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({
    super.key,
    required this.mediawidth,
  });

  final double mediawidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      //margin: const EdgeInsets.only(top: 120),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: mediawidth * 0.33,
            decoration: const BoxDecoration(
                color: kblack,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    bottomLeft: Radius.circular(22))),
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardText(
                    fontfamily: 'Raleway',
                    text: 'DISKUSS',
                    fontsize: 13,
                    fontWeight: FontWeight.normal,
                  ),
                  Spacer(),
                  CardText(
                    fontfamily: 'Raleway',
                    text: 'kiran',
                    fontsize: 11,
                    fontWeight: FontWeight.normal,
                  )
                ],
              ),
            ),
          ),
          Container(
            width: mediawidth * 0.568,
            decoration: const BoxDecoration(
                // color: kblue4,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(22),
                    bottomRight: Radius.circular(22)),
                gradient: LinearGradient(
                    colors: [kblue5, kblue4],
                    begin: Alignment.centerLeft)),
            child: const Padding(
              padding:
                  EdgeInsets.only(top: 23, left: 21, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardText(
                    fontfamily: 'Roboto Mono',
                    text: 'Designer',
                    fontsize: 27,
                    fontWeight: FontWeight.w500,
                  ),
                  Text(
                    'Personal Card',
                    style:
                        TextStyle(color: kgrey, fontSize: 12),
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Divider(
                      thickness: 1,
                      color: kgrey,
                    ),
                  ),
                  Text(
                    'Contact',
                    style: TextStyle(
                        //height: 1,
                        color: kwhite,
                        fontSize: 22,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'kiran27@gmail.com',
                    style: TextStyle(
                        height: 1, color: kgrey, fontSize: 12),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}