
import 'package:e_store/view/signin_screen_otp/signin_screen_otp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';

class MobileOtpField extends StatelessWidget {
  MobileOtpField({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 13,
      width: width * 0.9,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: mainBlack)),
      // color: Colors.blue,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: width / 10),
          ),
          SizedBox(
            width: width / 10,
            child: Text('+91'),
          ),
          Padding(
            padding: EdgeInsets.only(left: width / 30),
          ),
          Text(
            '|',
            style: TextStyle(
                fontSize: height / 25,
                color: mainBlack,
                fontWeight: FontWeight.w300),
          ),
          Padding(
            padding: EdgeInsets.only(left: width / 30),
          ),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: InputBorder.none),
              cursorColor: mainBlack,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width / 30),
          ),
        ],
      ),
    );
  }
}
