import 'package:e_store/constants/colors.dart';
import 'package:e_store/view/signin_screen_otp/widgets/logo_row.dart';
import 'package:e_store/view/signin_screen_otp/widgets/send_code_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../constants/asset_images.dart';
import 'widgets/mobile_otp_field.dart';

class SignInScreenOtp extends StatefulWidget {
  const SignInScreenOtp({super.key});
  static String phoneNumber = '';
  @override
  State<SignInScreenOtp> createState() => _SignInScreenOtpState();
}

class _SignInScreenOtpState extends State<SignInScreenOtp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondaryWhite,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(padding: EdgeInsets.only(top: height / 25)),
              Center(
                child: Image(
                  image: const AssetImage(authenticationPng),
                  height: height / 3,
                  width: width / 2,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: height / 30)),
              Text(
                "Phone Verification",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.only(top: height / 30)),
              Text(
                "We need to register your Phone Number before getting started !",
                style: TextStyle(
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: height / 30),
              ),
              MobileOtpField(
                height: height,
                width: width,
              ),
              Padding(
                padding: EdgeInsets.only(top: height / 15),
              ),
              SendCodeButton(height: height, width: width),
              Padding(
                padding: EdgeInsets.only(top: height / 35),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      height: 2,
                    ),
                  ),
                  Text(" Or continue with "),
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      height: 2,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height / 30,
              ),
              LogoRow(width: width, height: height),
            ],
          ),
        ),
      ),
    );
  }
}
