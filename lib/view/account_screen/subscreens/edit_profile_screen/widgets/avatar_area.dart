// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/view/account_screen/subscreens/edit_profile_screen/controller/edit_profile_controller.dart';

import '../../../../../constants/colors.dart';

class AvatarArea extends StatelessWidget {
  const AvatarArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<EditProfileScreenController>(
        builder: (context, genderProvider, _) {
      List imageList = [
        genderProvider.gender ? maleUserLogo : femaleUserLogo,
        maleUserLogo,
        femaleUserLogo
      ];
      return Container(
        height: 140,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: mainPink, boxShadow: [
          BoxShadow(color: Colors.black26, offset: Offset(0.5, 2))
        ]),
        child: genderProvider.isClick
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      genderProvider.genderUpate(gender1: true);
                      genderProvider.colorUpate(colorClick: true);
                    },
                    child: UserAvatar(
                      image: imageList[1],
                      color: genderProvider.clickColor1 ? mainPink : mainGrey,
                      genderProvider: genderProvider,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      genderProvider.genderUpate(gender1: false);
                      genderProvider.colorUpate2(colorClick: true);
                    },
                    child: UserAvatar(
                      image: imageList[2],
                      color: genderProvider.clickColor2 ? mainPink : mainGrey,
                      genderProvider: genderProvider,
                    ),
                  ),
                ],
              )
            : Center(
                child: InkWell(
                    onTap: () {
                      genderProvider.isClickUpdate(click: true);
                    },
                    child: UserAvatar(
                      genderProvider: genderProvider,
                      image: imageList[0],
                      color: mainGrey,
                    ))),
      );
    });
  }
}

class UserAvatar extends StatelessWidget {
  final EditProfileScreenController genderProvider;
  final String image;
  final Color color;
  const UserAvatar({
    Key? key,
    required this.genderProvider,
    required this.image,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: mainWhite,
            radius: 40,
            child: CircleAvatar(
              backgroundColor: color.withOpacity(0.5),
              radius: 38,
              child: Image.asset(
                image,
                height: 50,
              ),
            ),
          ),
          genderProvider.isClick
              ? SizedBox()
              : Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: mainWhite,
                    child: Icon(
                      Icons.edit,
                      color: mainBlack.withOpacity(0.5),
                      size: 8,
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
