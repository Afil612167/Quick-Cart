import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/constants/colors.dart';
import 'package:flutter/material.dart';

class ThirdOnBoardingScreen extends StatefulWidget {
  const ThirdOnBoardingScreen({super.key});

  @override
  State<ThirdOnBoardingScreen> createState() => _ThirdOnBoardingScreenState();
}

class _ThirdOnBoardingScreenState extends State<ThirdOnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: height / 50,
          ),
        ),
        Container(
          height: height / 2.2,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    onBoarding3,
                  ),
                  fit: BoxFit.contain)),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: height / 40,
          ),
        ),
        Text(
          'Get faster delivery',
          style: TextStyle(fontSize: height / 27, fontWeight: FontWeight.w500),
        ),
        Padding(padding: EdgeInsets.only(top: height / 50)),
        Text(
          'Find your best clothing options',
          style: TextStyle(fontSize: 16, color: mainBlack),
        ),Text(
          'without any delay',
          style: TextStyle(fontSize: 16, color: mainBlack),
        ),
      ],
    );
  }
}
