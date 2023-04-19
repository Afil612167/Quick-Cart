import 'package:e_store/constants/colors.dart';
import 'package:e_store/servieces/firebse_current_user.dart';
import 'package:e_store/view/account_screen/subscreens/edit_profile_screen/services/firestore_set.dart';
import 'package:e_store/view/account_screen/subscreens/edit_profile_screen/widgets/avatar_area.dart';
import 'package:e_store/view/account_screen/subscreens/edit_profile_screen/widgets/textfield_user.dart';
import 'package:e_store/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'controller/edit_profile_controller.dart';
import 'widgets/edit_small_title.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
                  icon: const Icon(Icons.arrow_back_ios_new)),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const AvatarArea(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: StreamBuilder(
                        stream: firestoreCollections,
                        builder: (context, snapshot) {
                          return Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                ),
                                child: EditSmallTitle(
                                  title: 'First Name',
                                ),
                              ),
                              TextfieldUserDetails(
                                errorText:
                                    editProfileScreenController.errorText,
                                editProfileScreenController:
                                    editProfileScreenController,
                                label: "Enter last Name",
                                text: snapshot.hasData
                                    ? snapshot.data!['firstName']
                                    : snapshot.hasError
                                        ? 'QuickCart'
                                        : 'QuickCart',
                                controller:
                                    editProfileScreenController.firstNameCtrl,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 10,
                                ),
                                child: EditSmallTitle(
                                  title: 'Last Name',
                                ),
                              ),
                              // TextfieldUserDetails(
                              //   errorText:
                              //       editProfileScreenController.errorText2,
                              //   label: "Enter last Name",
                              //   text: snapshot.hasData
                              //       ? snapshot.data!['secondName']
                              //       : snapshot.hasError
                              //           ? 'Customer'
                              //           : 'customer',
                              //   controller:
                              //       editProfileScreenController.lastNameCtrl,
                              //   editProfileScreenController:
                              //       editProfileScreenController,
                              // ),
                            ],
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          editProfileScreenController.errorText;
                          editProfileScreenController.errorText2;
                        });
                        if (editProfileScreenController
                                    .firstNameCtrl.text.length >
                                3 &&
                            editProfileScreenController
                                    .lastNameCtrl.text.length >
                                2) {
                          updateNameGender(
                                  firstName: editProfileScreenController
                                      .firstNameCtrl.text,
                                  lastName: editProfileScreenController
                                      .lastNameCtrl.text,
                                  gender: editProfileScreenController.gender)
                              .then((value) {
                            Get.offAll(HomeScreen());
                            editProfileScreenController.firstNameCtrl.clear();
                            editProfileScreenController.lastNameCtrl.clear();
                          });
                        }

                        context
                            .read<EditProfileScreenController>()
                            .isClickUpdate(click: false);
                        setState(() {});
                      },
                      child: const Text(
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
