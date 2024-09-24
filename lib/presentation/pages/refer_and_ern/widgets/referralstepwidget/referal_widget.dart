import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class WavyDottedLinePainter extends CustomPainter {
  final Color color;

  WavyDottedLinePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = 2;

    double startY = size.height / 2;
    double amplitude = 1;
    double frequency = 0.08;
    double dashLength = 2;
    bool draw = true;

    for (double x = 0; x < size.width; x += dashLength) {
      if (draw) {
        double y = amplitude * sin(frequency * x) + startY;
        canvas.drawCircle(Offset(x, y), 1, paint);
      }
      draw = !draw;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class ReferralStepsWidget extends StatelessWidget {
  final double mediawidth;
  const ReferralStepsWidget({super.key, required this.mediawidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 55, right: 20, top: 15),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: Icon(
                  FeatherIcons.send,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              CustomPaint(
                painter: WavyDottedLinePainter(
                    color: const Color.fromARGB(255, 198, 193, 193)),
                child: SizedBox(width: mediawidth * .22, height: 40),
              ),
              const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.card_giftcard,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              CustomPaint(
                painter: WavyDottedLinePainter(
                    color: const Color.fromARGB(255, 198, 193, 193)),
                child: SizedBox(width: mediawidth * .22, height: 40),
              ),
              const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.group,
                  color: Colors.white,
                  size: 20,
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                textAlign: TextAlign.center,
                "Invite your friends\nAnd Families",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Text(
                "Get ₹50 when\nSignup",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Get ₹50 when\ncard is created.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                textAlign: TextAlign.center,
                "Share the link with you\nfriends & other social\nplatforms.",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 112, 111, 111),
                    fontSize: 10),
              ),
              Text(
                "When your friend sign\nup on the app, you will\nreceive 50.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 112, 111, 111),
                    fontSize: 10),
              ),
              Text(
                "When your friend sign\nup on the app, you will\nreceive 50.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 112, 111, 111),
                    fontSize: 10),
              ),
            ],
          ),
        )
      ],
    );
  }
}
