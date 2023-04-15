import 'package:e_store/constants/colors.dart';
import 'package:e_store/view/account_screen/widgets/account_details_items.dart';
import 'package:e_store/view/account_screen/widgets/account_details_title.dart';
import 'package:e_store/view/account_screen/widgets/account_main_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class QuestionsAboutUsArea extends StatelessWidget {
  const QuestionsAboutUsArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainWhite,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            AccountDetailsTitle(title: "About us"),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: AccountSettingsItem(
                icon: Icon(Icons.info),
                title: "Brows FAQ's",
                ontap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
