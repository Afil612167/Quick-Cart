// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/constants/colors.dart';
import 'package:e_store/controller/bottom_navigation_controller.dart';

class EmptyWhislist extends StatelessWidget {
  final BottomNavigationController bottomNavigationController;
  const EmptyWhislist({
    Key? key,
    required this.bottomNavigationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      width: width,
      child: Column(
        children: [
          Image(
            image: AssetImage(favouriteEmpty),
            fit: BoxFit.contain,
          ),
          Text(
            "you haven't added any product yet",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(
            "click ❤ to save products",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {
                bottomNavigationController.indexUpdate(value: 0);
              },
              child: Text("Find items to save"),
              style: ElevatedButton.styleFrom(backgroundColor: mainPink),
            ),
          )
        ],
      ),
    );
  }
}
