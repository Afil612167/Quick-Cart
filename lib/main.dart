import 'package:e_store/view/home_screen/home_screen.dart';
import 'package:e_store/view/profile_page.dart/profile_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  } catch (e) {
    print(e.toString());
  }
  runApp(
    const GetMaterialApp(
      home: HomeScreen(),
    ),
  );
}
