// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_store/constants/colors.dart';
import 'package:e_store/view/account_screen/widgets/account_main_details.dart';
import 'package:e_store/view/account_screen/widgets/account_settings_area.dart';
import 'package:e_store/view/account_screen/widgets/earn_with_quickcart.dart';
import 'package:e_store/view/account_screen/widgets/logout_button.dart';
import 'package:e_store/view/account_screen/widgets/questions_about_us.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  final double width;
  const AccountScreen({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Column(
        children: [
          Container(
            height: 10,
            color: mainWhite,
          ),
          Container(
            color: mainWhite,
            child: const AccountMainDetails(),
          ),
          Container(
            height: 10,
            color: mainWhite,
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          const AccountSettingsArea(),
          const Padding(padding: EdgeInsets.only(top: 10)),
          const EarnWithQuikcartArea(),
          const Padding(padding: EdgeInsets.only(top: 10)),
          const QuestionsAboutUsArea(),
          Padding(
            padding: EdgeInsets.only(top: 15, bottom: 15),
            child: LogoutButtton(width: width),
          )
        ],
      ),
    );
  }
}
