
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants/colors.dart';
import '../../home_screen/home_screen.dart';

class ContinueButton extends StatefulWidget {
  ContinueButton({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  static String verify = '';

  @override
  State<ContinueButton> createState() => _ContinueButtonState();
}

class _ContinueButtonState extends State<ContinueButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
          SharedPreferences preferences = await SharedPreferences.getInstance();
          preferences.setBool("SignInKey", true);
        Get.offAll(HomeScreen());
      },
      child: SizedBox(
        height: widget.height / 16,
        width: widget.width / 1.5,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
          child: Text(
            "Continue",
            style: TextStyle(fontSize: widget.height / 39),
          ),
          style: ElevatedButton.styleFrom(
            primary: mainPink,
            onPrimary: secondaryWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
        ),
      ),
    );
  }
}
