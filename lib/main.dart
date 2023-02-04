import 'package:e_store/view/intro_screen/Intro_screen.dart';
import 'package:e_store/view/signin_screen_otp/signin_screen_otp.dart';
import 'package:e_store/view/welcome_screen/welcome_screen.dart';
import 'package:e_store/view/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  } catch (e) {
    print(e.toString());
  }
  runApp(GetMaterialApp(
    home: SplashScreen(),
  ));
}
