import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/prouducts/product_list.dart';
import 'package:e_store/view/common_widget/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../home_screen/home_screen.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: height * 0.35,
          width: width,
          decoration: BoxDecoration(
              color: mainGrey,
              image: DecorationImage(
                  image: AssetImage(fadeImage),
                  fit: BoxFit.scaleDown,
                  scale: 10)),
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: mainPink,
                child: IconButton(
                  onPressed: () {
                    Get.offAll(HomeScreen());
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: mainWhite,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
