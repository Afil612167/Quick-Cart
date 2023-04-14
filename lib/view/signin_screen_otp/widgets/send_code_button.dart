// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:e_store/controller/signin_controller.dart';
import 'package:e_store/view/singin_screen_otp_verification/signin_screen_otp_verification.dart';

import '../../../constants/colors.dart';

class SendCodeButton extends StatelessWidget {
  SendCodeButton({
    Key? key,
    required this.signInController,
    required this.height,
    required this.width,
  }) : super(key: key);
  final SignInController signInController;
  final double height;
  final double width;
  static String verify = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 20,
      width: width / 2,
      child: ElevatedButton(
        onPressed: () async {
          await FirebaseAuth.instance.verifyPhoneNumber(
            phoneNumber: signInController.phoneNumber,
            verificationCompleted: (PhoneAuthCredential credential) {},
            verificationFailed: (FirebaseAuthException e) {
              print(e);
            },
            codeSent: (String verificationId, int? resendToken) {
              signInController.varificationIdUpdate(
                  varificationId2: verificationId);
              Get.offAll(SignInScreenOtpVarification());
            },
            codeAutoRetrievalTimeout: (String verificationId) {},
          );
        },
        child: Text("Send the code"),
        style: ElevatedButton.styleFrom(
          backgroundColor: mainPink,
        ),
      ),
    );
  }
}
