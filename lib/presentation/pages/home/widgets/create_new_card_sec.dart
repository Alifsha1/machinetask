import 'package:flutter/material.dart';
import 'package:machinetask/core/style/colors/colors.dart';
import 'package:machinetask/presentation/pages/freeTrial/freetrial_page.dart';
import 'package:machinetask/presentation/pages/startTrial/starttrial.dart';

class CreateNewCardSec extends StatelessWidget {
  const CreateNewCardSec({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          color: kblack,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create New Digital',
                    style: TextStyle(
                      color: kwhite,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Business Card',
                    style: TextStyle(
                      color: kwhite,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  
                },
                child: Container(
                  height: 80,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.add,
                    color: kwhite,
                  ),
                  
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
