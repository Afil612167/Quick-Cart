import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

int currentIndex = 0;

class BottomNavigationBarHome extends StatefulWidget {
  const BottomNavigationBarHome({super.key});

  @override
  State<BottomNavigationBarHome> createState() =>
      _BottomNavigationBarHomeState();
}

class _BottomNavigationBarHomeState extends State<BottomNavigationBarHome> {
  @override
  Widget build(BuildContext context) {
    return BubbleBottomBar(
      hasNotch: true,
      backgroundColor: mainPink,
      // fabLocation: BubbleBottomBarFabLocation.end,
      opacity: .2,
      currentIndex: currentIndex,
      onTap: (value) {
        currentIndex = value!;
        if (currentIndex == 2) {
          const AlertDialog(

          );
        }
        setState(() {});
      },
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(16),
      ), //border radius doesn't work when the notch is enabled.
      elevation: 8,
      tilesPadding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      items: const <BubbleBottomBarItem>[
//***************************** - Home Icon - ************************************ *//

        BubbleBottomBarItem(
          backgroundColor: mainWhite,
          icon: Icon(
            Icons.home,
            color: mainWhite,
          ),
          activeIcon: Icon(
            Icons.home,
            color: mainWhite,
          ),
          title: Text("Home"),
        ),

//***************************** - Whislist icon - ************************************ *//

        BubbleBottomBarItem(
          backgroundColor: mainWhite,
          icon: Icon(
            Icons.bookmark_border,
            color: mainWhite,
          ),
          activeIcon: Icon(
            Icons.bookmark_border,
            color: mainWhite,
          ),
          title: Text("Wishlist"),
        ),

//***************************** - flash sale icon - ************************************ *//

        BubbleBottomBarItem(
          backgroundColor: mainWhite,
          icon: Icon(
            Icons.flash_on_sharp,
            color: mainWhite,
          ),
          activeIcon: Icon(
            Icons.flash_on_sharp,
            color: mainWhite,
          ),
          title: Text("Flash sale"),
        ),

//***************************** - account - ************************************ *//

        BubbleBottomBarItem(
          backgroundColor: mainWhite,
          icon: Icon(
            Icons.account_circle_outlined,
            color: mainWhite,
          ),
          activeIcon: Icon(
            Icons.account_circle_outlined,
            color: mainWhite,
          ),
          title: Text("Profile"),
        ),
      ],
    );
  }
}
