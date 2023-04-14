// ignore_for_file: avoid_print

import 'package:e_store/controller/bottom_navigation_controller.dart';
import 'package:e_store/controller/product_controller.dart';
import 'package:e_store/controller/signin_controller.dart';
import 'package:e_store/view/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  } catch (e) {
    print(e.toString());
  }
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductController>(
          create: (context) => ProductController(),
        ),
        ChangeNotifierProvider<BottomNavigationController>(
          create: (context) => BottomNavigationController(),
        ),
        ChangeNotifierProvider<SignInController>(
          create: (context) => SignInController(),
        ),
      ],
      child:const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    ),
  );
}
