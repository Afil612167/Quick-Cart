// ignore_for_file: avoid_print

import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/constants/colors.dart';
import 'package:e_store/view/account_screen/widgets/account_details_items.dart';
import 'package:e_store/view/account_screen/widgets/account_details_title.dart';
import 'package:e_store/view/account_screen/widgets/account_main_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EarnWithQuikcartArea extends StatelessWidget {
  const EarnWithQuikcartArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainWhite,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
          children: [
            const AccountDetailsTitle(title: "Earn With QuickCart"),
            const SizedBox(
              height: 10,
            ),
            AccountSettingsItem(
              icon: const Image(
                image: AssetImage(shopIcon),
                height: 18,
              ),
              title: "Sell On QuickCart",
              ontap: () {
                print("Sell");
              },
            ),
            AccountSettingsItem(
              icon: const Icon(
                Icons.star_outline_rounded,
                color: mainPink,
              ),
              title: "Become QuickCart creator",
              ontap: () {
                print('Creator');
              },
            )
          ],
        ),
      ),
    );
  }
}
