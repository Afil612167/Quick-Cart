//************************** -Start shopping Button- ********************************//
import 'package:e_store/view/signin_screen_otp/signin_screen_otp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../home_screen/home_screen.dart';

class StartShoppingButton extends StatelessWidget {
  const StartShoppingButton({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.off(SignInScreenOtp());
        },
        child: Container(
            decoration: BoxDecoration(
              color: mainPink,
              borderRadius: BorderRadius.circular(35),
            ),
            height: height / 15,
            width: width / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Start shopping',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: height / 45,
                      color: secondaryWhite),
                ),
                const Icon(
                  Icons.arrow_forward,
                  color: secondaryWhite,
                )
              ],
            )));
  }
}
