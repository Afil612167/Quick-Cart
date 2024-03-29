// import 'dart:ui';

import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/constants/colors.dart';
import 'package:e_store/view/successful_sign_in/widget/continue_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessfullSignInScreen extends StatefulWidget {
  const SuccessfullSignInScreen({super.key});

  @override
  State<SuccessfullSignInScreen> createState() =>
      _SuccessfullSignInScreenState();
}

class _SuccessfullSignInScreenState extends State<SuccessfullSignInScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: height / 5)),
                Center(
                  child: Text(
                    "Verification",
                    style:Theme.of(context).textTheme.headline3,
                  ),
                ),
                Center(
                  child: Text(
                    "Successful",
                    style:Theme.of(context).textTheme.headline4 ,
                  ),
                ),
                SizedBox(
                  height: height / 2.5,
                  child: Lottie.asset(lottie),
                ),
                ContinueButton(height: height, width: width)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
