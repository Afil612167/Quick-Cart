import 'package:e_store/controller/signin_controller.dart';
import 'package:e_store/servieces/firebse_current_user.dart';
import 'package:e_store/view/account_screen/subscreens/edit_profile_screen/services/firestore_set.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:e_store/view/successful_sign_in/successful_signin_screen.dart';

import '../../../constants/colors.dart';

class VerifyPhNumberButton extends StatelessWidget {
  const VerifyPhNumberButton({
    Key? key,
    required this.height,
    required this.width,
    required this.signInController,
  }) : super(key: key);

  final SignInController signInController;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height / 20,
      width: width * 0.9,
      child: ElevatedButton(
        onPressed: () async {
          FirebaseAuth auth = FirebaseAuth.instance;
          try {
            PhoneAuthCredential credential = PhoneAuthProvider.credential(
                verificationId: signInController.varificationId,
                smsCode: signInController.otp);

            // Sign the user in (or link) with the credential
            await auth.signInWithCredential(credential);
            await updateGender()
                .then((value) => Get.offAll(SuccessfullSignInScreen()));
          } catch (e) {
            Get.snackbar('wrong otp', 'Retry',
                snackPosition: SnackPosition.BOTTOM,
                duration: Duration(seconds: 2));
          }
          // Get.to(const SuccessfullSignInScreen());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: mainPink,
        ),
        child: const Text("Verify phone number"),
      ),
    );
  }
}
