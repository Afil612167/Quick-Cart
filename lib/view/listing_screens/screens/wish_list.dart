// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_store/view/common_widget/products_grid.dart';
import 'package:e_store/view/listing_screens/controller/wish_list_controller.dart';
import 'package:e_store/view/listing_screens/screens/widgets/wish_list_grid.dart';
import 'package:e_store/view/listing_screens/screens/wish_list_empty.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:e_store/constants/colors.dart';
import 'package:e_store/controller/bottom_navigation_controller.dart';

import '../../../controller/product_controller.dart';

class WishListBody extends StatelessWidget {
  final ProductController provider;
  final BottomNavigationController navigationController;
  final AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot;
  final BottomNavigationController bottomNavigationController;
  // final WishListController wishListController;
  const WishListBody({
    Key? key,
    required this.provider,
    required this.navigationController,
    required this.snapshot,
    required this.bottomNavigationController,
    // required this.wishListController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return WillPopScope(
        onWillPop: () {
          return navigationController.indexUpdate(value: 0);
        },
        // child: EmptyWhislist(
        //     bottomNavigationController: bottomNavigationController),
        child: WishListGrid(
          height: 0,
          width: width,
          provider: provider,
          snapshot: snapshot,
        ));
  }
}
