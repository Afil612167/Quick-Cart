// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../constants/colors.dart';

class CustomButton extends StatelessWidget {
  Callback ontap;
  CustomButton({
    Key? key,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: mainPink,
      child: IconButton(
        onPressed: ontap,
        icon: Icon(
          Icons.arrow_back,
          color: mainWhite,
          size: 24,
        ),
      ),
    );
  }
}
