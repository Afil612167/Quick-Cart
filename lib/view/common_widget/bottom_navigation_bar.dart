import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:e_store/controller/bottom_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/colors.dart';

class BottomNavigationBarHome extends StatefulWidget {
  const BottomNavigationBarHome({super.key});

  @override
  State<BottomNavigationBarHome> createState() =>
      _BottomNavigationBarHomeState();
}

class _BottomNavigationBarHomeState extends State<BottomNavigationBarHome> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationController>(
        builder: (context, provider, _) {
      return BubbleBottomBar(
        iconSize: 20,
        hasNotch: true,
        backgroundColor: mainPink,
        opacity: .2,
        currentIndex: provider.currentIndex,
        onTap: (value) {
          provider.indexUpdate(value: value);
        },
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ), //border radius doesn't work when the notch is enabled.
        elevation: 5,
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

//**********************************- Cart -************************************* */
          BubbleBottomBarItem(
            backgroundColor: mainWhite,
            icon: Icon(
              Icons.shopping_cart_checkout_outlined,
              color: mainWhite,
            ),
            activeIcon: Icon(
              Icons.shopping_cart_checkout_outlined,
              color: mainWhite,
            ),
            title: Text("Cart"),
          ),
        ],
      );
    });
  }
}
