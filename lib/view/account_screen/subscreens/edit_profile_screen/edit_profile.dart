import 'package:e_store/constants/colors.dart';
import 'package:e_store/view/account_screen/subscreens/edit_profile_screen/services/firestore_set.dart';
import 'package:e_store/view/common_widget/custom_button.dart';
import 'package:e_store/view/account_screen/subscreens/edit_profile_screen/widgets/avatar_area.dart';
import 'package:e_store/view/account_screen/subscreens/edit_profile_screen/widgets/textfield_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'controller/edit_profile_controller.dart';
import 'widgets/edit_small_title.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<EditProfileScreenController>(
        builder: (context, editProfileScreenController, _) {
      return SafeArea(
        child: WillPopScope(
          onWillPop: () {
            return editProfileScreenController.isClickUpdate(click: false);
          },
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: mainPink,
              leading: IconButton(
                  onPressed: () {
                    editProfileScreenController.isClickUpdate(click: false);
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back_ios_new)),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const AvatarArea(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                          ),
                          child: EditSmallTitle(
                            title: 'First Name',
                          ),
                        ),
                        TextfieldsUserDetails(
                          text: 'QuickKart',
                          controller: editProfileScreenController.firstNameCtrl,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                          ),
                          child: EditSmallTitle(
                            title: 'Last Name',
                          ),
                        ),
                        TextfieldsUserDetails(
                          text: 'Customer',
                          controller: editProfileScreenController.lastNameCtrl,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextButton(
                      onPressed: () {
                          updateName(
                              firstName: editProfileScreenController
                                  .firstNameCtrl.text,
                              lastName: editProfileScreenController
                                  .lastNameCtrl.text);
                        
                        context
                            .read<EditProfileScreenController>()
                            .isClickUpdate(click: false);
                      },
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: mainPink,
                            fontSize: 16),
                      ))
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
