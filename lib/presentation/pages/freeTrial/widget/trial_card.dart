import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machinetask/core/constants/constants.dart';
import 'package:machinetask/core/style/colors/colors.dart';
import 'package:machinetask/presentation/pages/refer_and_ern/refer_and_ern.dart';

class TrialCardWidget extends StatelessWidget {
  const TrialCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 60,
      // width: 40,

      decoration: BoxDecoration(
          // boxShadow: List.filled(10, BoxShadow()),
          color: kwhite,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 35, left: 18, right: 18, bottom: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Silver',
                      style: TextStyle(
                          height: .9,
                          color: kblack,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Raleway',
                          fontSize: 30),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    // Spacer(),
                    Row(
                      children: [
                        Text(
                          '\u20B9',
                          style: TextStyle(
                              height: .9,
                              color: kblack,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Raleway',
                              fontSize: 30),
                        ),
                        Text(
                          '99',
                          style: TextStyle(
                              height: .9,
                              color: kblack,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Raleway',
                              fontSize: 30),
                        ),
                        Text(
                          '/',
                          style: TextStyle(
                              height: .9,
                              color: kblack,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Raleway',
                              fontSize: 30),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 14),
                          child: Text(
                            'mo',
                            style: TextStyle(
                                height: .9,
                                color: kblack,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Raleway',
                                fontSize: 10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [Text('7 Days Free Trial, Then \u20B999/month')],
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: kblack,
                ),
                kwidht30,
                Text('10 free Template'),
                // Spacer(),
              ],
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: kblack,
                ),
                kwidht30,
                Text('Access to live meeting'),
                Spacer(),
              ],
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: kblack,
                ),
                kwidht30,
                Text('No Ads'),
                Spacer(),
              ],
            ),
            const Row(
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: kblack,
                ),
                kwidht30,
                Text('Cancel Anytime'),
                Spacer(),
              ],
            ),
            GestureDetector(
              onTap: () {
               
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
                      'Continue',
                      style: TextStyle(color: kwhite, fontSize: 15),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
