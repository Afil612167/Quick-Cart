import 'package:flutter/material.dart';

import '../../../constants/asset_images.dart';
import '../../../constants/colors.dart';

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
      radius: height / 32,
      child: CircleAvatar(
        radius: height / 35,
        backgroundImage: AssetImage(maleUserLogo),
      ),
    );
  }
}

//App bar icon