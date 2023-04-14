import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/view/welcome_screen/widgets/startshopping_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        width: width,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height / 10),
            ),
            Container(
              height: height / 6,
              width: width / 3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(appIcon),
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: height / 35, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Image(
              image: AssetImage(welcome),
              fit: BoxFit.contain,
              height: height / 3,
            ),
            Padding(
              padding: EdgeInsets.only(top: height / 10),
            ),
            StartShoppingButton(height: height, width: width)
          ],
        ),
      ),
    );
  }
}
