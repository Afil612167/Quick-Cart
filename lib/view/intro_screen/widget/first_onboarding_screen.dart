import 'package:e_store/constants/colors.dart';
import 'package:flutter/material.dart';

class FirstOnBoardingScreen extends StatefulWidget {
  const FirstOnBoardingScreen({super.key});

  @override
  State<FirstOnBoardingScreen> createState() => _FirstOnBoardingScreenState();
}

class _FirstOnBoardingScreenState extends State<FirstOnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: height /50 ,
            ),
          ),
          Container(
            height: height / 2.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/onboarding1.png',),fit: BoxFit.contain)),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: height / 40,
            ),
          ),
          Text(
            'Explore the New World',
            style:
                TextStyle(fontSize: height / 27, fontWeight: FontWeight.w500),
          ),
          Padding(padding: EdgeInsets.only(top: height / 50)),
          const Text(
            'Find your best clothing options',
            style: TextStyle(fontSize: 16,color: mainBlack),
          ),
          const Text('wihtout any delay',),
        ],
      );
    
  }
}
