
import 'package:e_store/constants/asset_images.dart';
import 'package:flutter/material.dart';

class LogoRow extends StatelessWidget {
  const LogoRow({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: width / 8,
        ),
        Image(
          image: AssetImage(googleLogo),
          height: height / 20,
        ),
        Image(
          image: AssetImage(facebookLogo),
          height: height / 20,
        ),
        SizedBox(
          width: width / 8,
        ),
      ],
    );
  }
}
