import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:machinetask/core/constants/constants.dart';
import 'package:machinetask/core/style/colors/colors.dart';
import 'package:machinetask/presentation/pages/home/widgets/create_new_card_sec.dart';
import 'package:machinetask/presentation/pages/home/widgets/manage_card_sec.dart';
import 'package:machinetask/presentation/pages/home/widgets/view_back_button.dart';
import 'package:machinetask/presentation/widgets/card/card.dart';
import 'package:machinetask/presentation/widgets/text/card_text.dart';
import 'package:machinetask/presentation/widgets/text/heading.dart';
import 'package:machinetask/presentation/widgets/text/subheadings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool ispressed = false;
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
                  height: 350,
                  width: double.infinity,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kblue3,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/Atmimage.jpeg'),
                              ),
                              const Heading(
                                heading: 'Diskuss',
                                fontWeight: FontWeight.w500,
                              ),
                              Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 26,
                                    backgroundColor:
                                        Colors.transparent.withOpacity(.1),
                                    child: const Icon(
                                      FeatherIcons.messageCircle,
                                      color: kwhite,
                                      size: 35,
                                    ),
                                  ),
                                  Positioned.fill(
                                    top: 2,
                                    right: 0,
                                    left: 15,
                                    bottom: 28,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.red,
                                      child: Text(
                                        '4',
                                        style: TextStyle(color: kwhite),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Positioned.fill(
                //   child: CircleAvatar(
                //     //radius: 05,
                //     backgroundColor: Colors.red,
                //     child: Text(
                //       '4',
                //       style: TextStyle(color: kwhite),
                //     ),
                //   ),
                // ),
                Positioned.fill(
                  top: 120,
                  //bottom: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: HomeScreenCard(mediawidth: mediawidth),
                  ),
                )
              ],
            ),
            const ViewBackSideButton(),
            const ManageCardSec(),
            const CreateNewCardSec(),
            const SubHeadings(
              text: 'Categories',
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CategorieCircleAvatar(
                    icon: Icons.photo_library_outlined,
                    ispressed: true,
                    text: 'Themes',
                  ),
                  CategorieCircleAvatar(
                    icon: Icons.groups_2,
                    ispressed: false,
                    text: 'Meeting',
                  ),
                  CategorieCircleAvatar(
                    icon: Icons.perm_contact_cal_outlined,
                    ispressed: false,
                    text: 'Contacts',
                  ),
                  CategorieCircleAvatar(
                    icon: Icons.card_giftcard,
                    ispressed: false,
                    text: 'Themes',
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                SubHeadings(
                  text: 'Reminders',
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 20, top: 10),
                  child: Text(
                    'See all',
                    style: TextStyle(color: kblack, fontSize: 18),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 219, 209, 209)),
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundColor: kblue,
                        child: Icon(
                          CupertinoIcons.person_circle,
                          color: kwhite,
                        )),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kiran',
                          style: TextStyle(
                              color: kblack, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'levon technology',
                          style: TextStyle(
                            color: kgrey,
                          ),
                        ),
                      ],
                    ),
                    trailing: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Today',
                            style: TextStyle(color: kgrey, fontSize: 13),
                          ),
                          Text(
                            '10:30 am',
                            style: TextStyle(
                              color: kgrey,
                            ),
                          ),
                        ],
                      ),
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

class CategorieCircleAvatar extends StatefulWidget {
  final IconData icon;

  final String text;
  final bool ispressed;
  // void Function()? onTap;
  const CategorieCircleAvatar({
    super.key,
    required this.icon,
    required this.text,
    required this.ispressed,
    //required this.onTap,
  });

  @override
  State<CategorieCircleAvatar> createState() => _CategorieCircleAvatarState();
}

class _CategorieCircleAvatarState extends State<CategorieCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: widget.ispressed
                ? const LinearGradient(
                    colors: [kblue, Color.fromARGB(255, 166, 206, 238)],
                    begin: Alignment.topRight,
                    end: Alignment.bottomRight,
                  )
                : const LinearGradient(
                    colors: [Colors.black, Colors.black],
                  ),
          ),
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.transparent,
            child: Icon(
              widget.icon,
              color: kwhite,
              size: 35,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            widget.text,
            style: TextStyle(
              color: widget.ispressed ? kblue : Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
