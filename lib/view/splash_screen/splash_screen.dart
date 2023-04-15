import 'dart:async';
import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/view/home_screen/home_screen.dart';
import 'package:e_store/view/intro_screen/intro_screen.dart';
import 'package:e_store/view/splash_screen/widgets/gradient.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => whereToGo(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: linearGradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: height / 10)),
            Image(
              image: AssetImage(appIcon),
              filterQuality: FilterQuality.high,
              height: height / 8,
            ),
            Text('Explore the New World',
                style: TextStyle(
                    fontSize: height / 50, fontWeight: FontWeight.w500)),
            SizedBox(
              height: height * 0.3,
            ),
            CircularProgressIndicator(
              color: secondaryWhite,
            )
          ],
        ),
      ),
    );
  }
}

whereToGo() async {
  String? user = FirebaseAuth.instance.currentUser!.phoneNumber;
  print(user);
  if (user != null)
    Get.offAll(HomeScreen());
  else
    Get.offAll(OnBoardingScreen());
}
