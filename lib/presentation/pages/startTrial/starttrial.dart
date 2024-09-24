import 'package:flutter/material.dart';
import 'package:machinetask/core/constants/constants.dart';
import 'package:machinetask/core/style/colors/colors.dart';
import 'package:machinetask/presentation/pages/freeTrial/freetrial_page.dart';
import 'package:timelines/timelines.dart';

class StarttrialScreen extends StatefulWidget {
  const StarttrialScreen({super.key});

  @override
  State<StarttrialScreen> createState() => _StarttrialScreenState();
}

class _StarttrialScreenState extends State<StarttrialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF236ed4),
              ),
              height: 250,
              child: const Padding(
                padding: EdgeInsets.only(top: 60, left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.close,
                          size: 36,
                          color: kwhite,
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          kwidht20,
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Start a free trail',
                                  style: TextStyle(
                                      height: .9,
                                      color: kwhite,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Raleway',
                                      fontSize: 40),
                                ),
                                Text(
                                  'now',
                                  style: TextStyle(
                                      color: kwhite,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Raleway',
                                      fontSize: 40),
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FixedTimeline.tileBuilder(
                theme: TimelineThemeData(
                  nodePosition: 0.1,
                  indicatorTheme: const IndicatorThemeData(size: 40),
                  connectorTheme: const ConnectorThemeData(thickness: 2),
                ),
                builder: TimelineTileBuilder.connected(
                  contentsAlign: ContentsAlign.basic,
                  connectorBuilder: (_, __, ___) => SizedBox(
                    height: 30,
                    child: const DashedLineConnector(
                        color: Color.fromARGB(255, 137, 193, 238)),
                  ),
                  indicatorBuilder: (context, index) {
                    if (index == 0) {
                      return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFd2e1fa)),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Icon(Icons.lock, color: Colors.blue),
                          ));
                    } else if (index == 1) {
                      return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFd2e1fa)),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child:
                                Icon(Icons.notifications, color: Colors.blue),
                          ));
                    } else {
                      return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xFFd2e1fa)),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Icon(Icons.timer, color: Colors.blue),
                          ));
                    }
                  },
                  itemCount: 3,
                  contentsBuilder: (context, index) {
                    if (index == 0) {
                      return const Padding(
                        padding: EdgeInsets.only(top: 27, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Today',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            SizedBox(height: 4),
                            Text('Unlock all the features'),
                          ],
                        ),
                      );
                    } else if (index == 1) {
                      return const Padding(
                        padding: EdgeInsets.only(top: 27, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Day 4',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            SizedBox(height: 4),
                            Text(
                                'Get a reminder that your trial \nis about to end'),
                          ],
                        ),
                      );
                    } else {
                      return const Padding(
                        padding: EdgeInsets.only(top: 27, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Day 7',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                            SizedBox(height: 4),
                            Text('If you want you can cancel anytime'),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
            Text('7 Days Free Trial, Then \u20B999/month '),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FreetrialPageScreen(),
                      ));
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xFF226cd0),
                      borderRadius: BorderRadius.circular(8)),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      // left: 100,
                      // right: 100,
                      top: 15,
                      bottom: 15,
                    ),
                    child: Center(
                      child: Text(
                        'Start 7-Days Free Trial',
                        style: TextStyle(color: kwhite, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    //  color: kwhite,
                    borderRadius: BorderRadius.circular(8)),
                child: const Padding(
                  padding: EdgeInsets.only(
                    // left: 100,
                    // right: 100,
                    top: 15,
                    bottom: 15,
                  ),
                  child: Center(
                    child: Text(
                      'View All Plans',
                      style: TextStyle(
                          color: const Color(0xFF226cd0), fontSize: 15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
