// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:e_store/view/account_screen/subscreens/edit_profile_screen/controller/edit_profile_controller.dart';

import '../../../../../constants/colors.dart';

class TextfieldUserDetails extends StatelessWidget {
  String text;
  TextEditingController controller;
  String? errorText;
  String label;
  EditProfileScreenController editProfileScreenController;
  TextfieldUserDetails({
    Key? key,
    required this.text,
    required this.controller,
    required this.errorText,
    required this.label,
    required this.editProfileScreenController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        FilteringTextInputFormatter.allow(
          RegExp(r"[a-zA-Z]+|\s"),
        )
      ],
      controller: controller,
      decoration: InputDecoration(
        errorText: errorText,
        border: OutlineInputBorder(),
        hintText: text,
        hintStyle: TextStyle(color: mainBlack.withOpacity(0.5), overflow: TextOverflow.ellipsis,),
      ),
    );
  }
}
