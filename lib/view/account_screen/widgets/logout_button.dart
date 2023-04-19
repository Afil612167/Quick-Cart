import 'package:e_store/constants/colors.dart';
import 'package:e_store/view/signin_screen_otp/signin_screen_otp.dart';
import 'package:e_store/view/splash_screen/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogoutButtton extends StatelessWidget {
  final double width;

  const LogoutButtton({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        FirebaseAuth.instance.signOut();
        Get.offAll(SignInScreenOtp());
      },
      child: Text("Sign Out"),
      style: ElevatedButton.styleFrom(
        backgroundColor: mainPink,
        minimumSize: Size(width * 0.9, 30),
      ),
    );
  }
}
