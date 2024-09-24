// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_feather_icons/flutter_feather_icons.dart';
// import 'package:machinetask/core/style/colors/colors.dart';
// import 'package:machinetask/presentation/pages/freeTrial/freetrial_page.dart';
// import 'package:machinetask/presentation/pages/home/home_screen.dart';
// import 'package:machinetask/presentation/pages/refer_and_ern/refer_and_ern.dart';
// import 'package:machinetask/presentation/pages/startTrial/starttrial.dart';

// class NavbarWidget extends StatefulWidget {
//   const NavbarWidget({super.key});

//   @override
//   State<NavbarWidget> createState() => _NavbarWidgetState();
// }

// class _NavbarWidgetState extends State<NavbarWidget> {
//   List<Widget> pages = [
//     const HomeScreen(),
//     const FreetrialPageScreen(),
//     const StarttrialScreen(),
//     const ReferAndErnScreen()
//   ];

//   List<IconData> icons = [
//     FeatherIcons.home,
//     Icons.group,
//     Icons.analytics_outlined,
//     FeatherIcons.settings,
//   ];

//   List<String> iconLabels = [
//     'Home',
//     'Network',
//     'Analytics',
//     'Settings',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ValueListenableBuilder<int>(
//         valueListenable: indexChangeNotifier,
//         builder: (context, index, child) {
//           return pages[index];
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         child: Container(
//           width: 56,
//           height: 56,
//           decoration: const BoxDecoration(
//             shape: BoxShape.circle,
//             gradient: LinearGradient(
//               colors: [Color(0xFF194f99), Color(0xFF2a84ff)],
//               begin: Alignment.bottomRight,
//               end: Alignment.topRight,
//             ),
//           ),
//           child: const Icon(
//             Icons.qr_code_scanner_outlined,
//             color: Colors.white,
//             size: 30,
//           ),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: AnimatedBottomNavigationBar.builder(
//         itemCount: icons.length,
//         tabBuilder: (int index, bool isActive) {
//           final color = isActive ? kblue : kgrey;
//           return Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(
//                 icons[index],
//                 size: 24,
//                 color: color,
//               ),
//               const SizedBox(height: 4),
//               Text(
//                 iconLabels[index],
//                 style: TextStyle(
//                   color: color,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ],
//           );
//         },
//         backgroundColor: kwhite,
//         activeIndex: indexChangeNotifier.value,
//         gapLocation: GapLocation.center,
//         notchSmoothness: NotchSmoothness.softEdge,
//         onTap: (index) {
//           indexChangeNotifier.value = index;
//         },
//       ),
//     );
//   }
// }

// ValueNotifier<int> indexChangeNotifier = ValueNotifier<int>(0);
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:machinetask/core/style/colors/colors.dart';
import 'package:machinetask/presentation/pages/freeTrial/freetrial_page.dart';
import 'package:machinetask/presentation/pages/home/home_screen.dart';
import 'package:machinetask/presentation/pages/refer_and_ern/refer_and_ern.dart';
import 'package:machinetask/presentation/pages/startTrial/starttrial.dart';

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  int _selectedIndex = 0;

  final List<Widget> pages = [
    const HomeScreen(),
    const FreetrialPageScreen(),
    const StarttrialScreen(),
    const ReferAndErnScreen(),
  ];

  final List<IconData> icons = [
    FeatherIcons.home,
    Icons.group,
    Icons.analytics_outlined,
    FeatherIcons.settings,
  ];

  final List<String> iconLabels = [
    'Home',
    'Network',
    'Analytics',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
          width: 56,
          height: 56,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Color(0xFF194f99), Color(0xFF2a84ff)],
              begin: Alignment.bottomRight,
              end: Alignment.topRight,
            ),
          ),
          child: const Icon(
            Icons.qr_code_scanner_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: icons.length,
        tabBuilder: (int index, bool isActive) {
          final color = _selectedIndex == index ? kblue : kgrey;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icons[index],
                size: 24,
                color: color,
              ),
              const SizedBox(height: 4),
              Text(
                iconLabels[index],
                style: TextStyle(
                  color: color,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        },
        backgroundColor: kwhite,
        activeIndex: _selectedIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
