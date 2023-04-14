// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_store/constants/asset_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';


class CustomButton extends StatelessWidget {
  Callback ontap;
  CustomButton({
    Key? key,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        height: 20,
        width: 20,
        child: Image.asset(backIcon)),
    );
  }
}
