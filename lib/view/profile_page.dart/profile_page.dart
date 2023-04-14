import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/constants/colors.dart';
import 'package:e_store/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                backgroundColor: mainPink,
                child: IconButton(
                    onPressed: () {
                      Get.to(HomeScreen());
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: mainWhite,
                    ))),
          ),
          title: Text(
            'Profile',
          ),
          titleTextStyle: TextStyle(
              color: mainBlack,
              fontWeight: FontWeight.w500,
              fontSize: height * 0.0290205562273),
          centerTitle: true,
        ),
        body: Column(
          children: [
            CircleAvatar(
              radius: height/4,
              backgroundImage: AssetImage(maleUserLogo),
            )
          ],
        ),
      ),
    );
  }
}
