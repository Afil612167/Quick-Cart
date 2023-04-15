import 'package:flutter/material.dart';

import '../../controller/bottom_navigation_controller.dart';
import '../common_widget/custom_button.dart';

AppBar homeScreenappbar(
  BottomNavigationController navigationProvider,
  BuildContext context,
  String text,
  Color color
) {
  return AppBar(
    elevation: 0,
    backgroundColor: color,
    leading: Padding(
      padding: EdgeInsets.only(left: 10),
      child: FittedBox(child: CustomButton(ontap: () {
        navigationProvider.indexUpdate(value: 0);
      })),
    ),
    title: Text(
      text,
      style: Theme.of(context).textTheme.headline6,
    ),
    centerTitle: navigationProvider.currentIndex == 3 ? false : true,
  );
}
