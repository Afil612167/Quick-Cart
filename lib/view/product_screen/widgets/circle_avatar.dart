import 'package:flutter/material.dart';

import '../../../constants/asset_images.dart';
import '../../../constants/colors.dart';

// ignore: must_be_immutable
class ProfileCircleAvatar extends StatelessWidget {
  double height;
  double width;
  ProfileCircleAvatar({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: mainBlack,
      radius: 19,
      child: CircleAvatar(
        radius: 20,
        backgroundImage: const AssetImage(maleUserLogo),
      ),
    );
  }
}

//App bar icon