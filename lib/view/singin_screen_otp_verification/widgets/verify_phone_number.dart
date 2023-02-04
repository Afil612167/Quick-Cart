import 'package:e_store/view/home_screen/home_screen.dart';
import 'package:e_store/view/successful_sign_in/successful_signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../signin_screen_otp/widgets/send_code_button.dart';
import '../signin_screen_otp_verification.dart';

class VerifyPhNumberButton extends StatelessWidget {
  VerifyPhNumberButton({
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
          Get.to(SuccessfullSignInScreen());
        },
        child: Text("Verify phone number"),
        style: ElevatedButton.styleFrom(
          backgroundColor: mainPink,
        ),
      ),
    );
  }
}
