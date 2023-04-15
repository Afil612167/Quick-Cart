// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_store/view/account_screen/subscreens/edit_profile_screen/edit_profile.dart';
import 'package:e_store/view/account_screen/subscreens/saved_address_screen/saved_address_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import 'package:e_store/constants/colors.dart';

import 'account_details_items.dart';
import 'account_details_title.dart';

class AccountSettingsArea extends StatelessWidget {
  const AccountSettingsArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainWhite,
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        const AccountDetailsTitle(
          title: "Account Settings",
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        AccountSettingsItem(
          icon: const Icon(
            Icons.add,
            color: mainPink,
          ),
          title: "QuickCart Plus",
          ontap: () {
            print("Plus");
          },
        ),
        AccountSettingsItem(
          icon: const Icon(
            Icons.account_circle_outlined,
            color: mainPink,
          ),
          title: "Edit profile",
          ontap: () {
            Get.to(EditProfileScreen());
          },
        ),
        AccountSettingsItem(
          icon: const Icon(
            Icons.location_on_outlined,
            color: mainPink,
          ),
          title: "Saved Address",
          ontap: () {
            Get.to(SavedAddressScreen());
          },
        ),
        AccountSettingsItem(
          icon: const Icon(
            Icons.edit_notifications_outlined,
            color: mainPink,
          ),
          title: "Notification settings",
          ontap: () {
            print("hellow");
          },
        ),
      ]),
    );
  }
}
