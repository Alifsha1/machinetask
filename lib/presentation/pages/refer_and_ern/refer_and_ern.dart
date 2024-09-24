import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:machinetask/core/constants/constants.dart';
import 'package:machinetask/core/style/colors/colors.dart';
import 'package:machinetask/presentation/pages/refer_and_ern/widgets/refer_card/refer_card_widget.dart';
import 'package:machinetask/presentation/pages/refer_and_ern/widgets/referralstepwidget/referal_widget.dart';
import 'package:machinetask/presentation/widgets/card/card.dart';
import 'package:machinetask/presentation/widgets/text/heading.dart';

class ReferAndErnScreen extends StatefulWidget {
  const ReferAndErnScreen({super.key});

  @override
  State<ReferAndErnScreen> createState() => _ReferAndErnScreenState();
}

class _ReferAndErnScreenState extends State<ReferAndErnScreen> {
  @override
  Widget build(BuildContext context) {
    final mediawidth = MediaQuery.of(context).size.width;
    final mediaheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 390,
                  width: double.infinity,
                ),
                Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/atm4.jpg',
                        ),
                        fit: BoxFit.cover),
                    color: kblue3,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 280,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: kwhite,
                                    //border: Border.all(color: kwhite),
                                    borderRadius: BorderRadius.circular(13)),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15, top: 10, bottom: 9, right: 7),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: kblack,
                                  ),
                                ),
                              ),
                              kwidht30,
                              const Heading(
                                heading: 'Refer and Earn',
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Positioned.fill(
                  top: 110,
                  //bottom: 40,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Heading(
                              heading: 'Earn \u20B92000/-',
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Refer your Friend',
                              style: TextStyle(
                                  color: kgrey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned.fill(
                  top: 166,
                  //bottom: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: ReferCardWidget(mediawidth: mediawidth),
                  ),
                ),
                Positioned.fill(
                  top: 237,
                  bottom: 80,
                  left: 52,
                  right: 242,
                  child: Container(
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                        color: kblue, borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 23, top: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '\u20B9250',
                                style: TextStyle(
                                    color: kwhite,
                                    fontWeight: FontWeight.bold,
                                    height: 1,
                                    fontSize: 30),
                              )
                            ],
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'collected',
                                style: TextStyle(
                                  color: kwhite,
                                  // fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(8.0),
                color: Colors.grey,
                strokeWidth: 2,
                dashPattern: const [7, 5],
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'DISKUSS2024',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.copy,
                          size: 20.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'How it works!',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ReferralStepsWidget(
                mediawidth: mediawidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 206, 203, 203),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        'See all FAQs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kblack),
                      ),
                      SizedBox(
                        width: mediawidth * .04,
                      ),
                      Icon(Icons.help),
                      Spacer(),
                      Icon(CupertinoIcons.chevron_down)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: kblue, borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, bottom: 15, right: 126, left: 126),
                      child: Text(
                        'Invite',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kwhite),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: mediawidth * .05,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: kgrey,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 14, bottom: 14, left: 25, right: 25),
                      child: Icon(
                        FontAwesomeIcons.whatsapp,
                        color: kgreen,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
