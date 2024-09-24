import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:machinetask/core/constants/constants.dart';
import 'package:machinetask/core/style/colors/colors.dart';
import 'package:machinetask/presentation/pages/freeTrial/widget/trial_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FreetrialPageScreen extends StatefulWidget {
  const FreetrialPageScreen({super.key});

  @override
  State<FreetrialPageScreen> createState() => _FreetrialPageScreenState();
}

class _FreetrialPageScreenState extends State<FreetrialPageScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final pages = List.generate(3, (index) => const TrialCardWidget());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 630,
                 
                  width: double.infinity,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF236ed4),

                  ),
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: kwhite),
                                        borderRadius:
                                            BorderRadius.circular(13)),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 13,
                                          top: 6,
                                          bottom: 6,
                                          right: 6),
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        color: kwhite,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  )
                                ],
                              ),
                              kwidht20,
                              const Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Start Your 7 Days',
                                      style: TextStyle(
                                          height: .9,
                                          color: kwhite,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Raleway',
                                          fontSize: 30),
                                    ),
                                    Text(
                                      'Free Trail',
                                      style: TextStyle(
                                          color: kwhite,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Raleway',
                                          fontSize: 30),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned.fill(
                  top: 170,
                  bottom: 35,
                  //bottom: 40,
                  child: PageView.builder(
                    controller: controller,
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: pages[index % pages.length],
                      );
                    },
                  ),
                ),
                Positioned.fill(
                    child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      dotColor: kgrey,
                      activeDotColor: kblue,
                      spacing: 8.0,
                      radius: 4,
                      dotHeight: 5,
                      dotWidth: 15,
                    ),
                  ),
                ))
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Terms & Conditions')],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Lorem ipsum dolor sit amet consectetur.')],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Elsmod non nisl magna nullam nisi nisi pharetra')
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('eu facilis. Odio laoreer turpis quis tempor')],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('fringilla.Accumsan')],
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
