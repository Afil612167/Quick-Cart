import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:e_store/view/successful_sign_in/successful_signin_screen.dart';

import '../../../constants/colors.dart';

class VerifyPhNumberButton extends StatelessWidget {
  const VerifyPhNumberButton({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 20,
      width: width * 0.9,
      child: ElevatedButton(
        onPressed: () {
          Get.to(const SuccessfullSignInScreen());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: mainPink,
        ),
        child: const Text("Verify phone number"),
      ),
    );
  }
}
