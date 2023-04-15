// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../../../../constants/colors.dart';

class TextfieldsUserDetails extends StatelessWidget {
  final String text;
  TextEditingController controller;
   TextfieldsUserDetails( {
    Key? key,
    required this.text,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(color: mainBlack, overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
