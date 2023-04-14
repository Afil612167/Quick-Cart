import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/constants/colors.dart';
import 'package:flutter/material.dart';

class SecondOnBoardingScreen extends StatefulWidget {
  const SecondOnBoardingScreen({super.key});

  @override
  State<SecondOnBoardingScreen> createState() => _SecondOnBoardingScreenState();
}

class _SecondOnBoardingScreenState extends State<SecondOnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;

    return Column(
      //how 
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
                    onBoarding2,
                  ),
                  fit: BoxFit.contain)),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: height / 40,
          ),
        ),
        Text(
          'Discover new trend',
          style: TextStyle(fontSize: height / 27, fontWeight: FontWeight.w500),
        ),
        Padding(padding: EdgeInsets.only(top: height / 50)),
        Text(
          'Find your best clothing options',
          style: TextStyle(fontSize: 16, color: mainBlack),
        ),
      ],
    );
  }
}
