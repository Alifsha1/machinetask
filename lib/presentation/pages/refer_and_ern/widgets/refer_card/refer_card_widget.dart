import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:machinetask/core/style/colors/colors.dart';
import 'package:machinetask/presentation/widgets/text/card_text.dart';

class ReferCardWidget extends StatefulWidget {
  final double mediawidth;
  const ReferCardWidget({super.key, required this.mediawidth});

  @override
  State<ReferCardWidget> createState() => _ReferCardWidgetState();
}

class _ReferCardWidgetState extends State<ReferCardWidget> {
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
            width: widget.mediawidth * 0.31,
            decoration: const BoxDecoration(
                color: kblack,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    bottomLeft: Radius.circular(22))),
            child: const Padding(
              padding: EdgeInsets.only(left: 30, top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CardText(
                    fontfamily: 'Raleway',
                    text: 'DISKUSS',
                    fontsize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: widget.mediawidth * 0.568,
            decoration: const BoxDecoration(
                // color: kblue4,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(22),
                    bottomRight: Radius.circular(22)),
                gradient: LinearGradient(
                    colors: [kgrey1, kblack], begin: Alignment.centerLeft)),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 21,
                right: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Divider(
                      thickness: 1,
                      color: kgrey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 55, left: 13),
                    child: Row(
                      children: [
                        const Text(
                          'Invite accepted - ',
                          style: TextStyle(color: kgrey, fontSize: 15),
                        ),
                        const Text(
                          '05',
                          style: TextStyle(
                              color: kwhite,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 13),
                    child: Row(
                      children: [
                        const Text(
                          'Next Reward - ',
                          style: TextStyle(color: kgrey, fontSize: 15),
                        ),
                        const Text(
                          '\u20B9500',
                          style: TextStyle(
                              color: kwhite,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: kblue,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Padding(
                            padding: EdgeInsets.only(
                              left: 17,
                              right: 17,
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: kwhite,
                              size: 23,
                            ),
                          ),
                        )
                      ],
                    ),
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
