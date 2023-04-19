import 'package:e_store/servieces/firebse_current_user.dart';
import 'package:e_store/view/listing_screens/screens/wish_list.dart';
import 'package:e_store/view/listing_screens/screens/wish_list_empty.dart';
import 'package:flutter/material.dart';

import 'package:e_store/controller/bottom_navigation_controller.dart';
import 'package:e_store/controller/product_controller.dart';

class ListingBody extends StatelessWidget {
  final ProductController provider;
  final BottomNavigationController bottomNavigationController;

  const ListingBody({
    Key? key,
    required this.provider,
    required this.bottomNavigationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: wishListFireStore.snapshots(),
        builder: (context, snapshot) {
          if (snapshot.data?.docs.isEmpty==false) {
            return WishListBody(
              snapshot: snapshot,
              provider: provider,
              navigationController: bottomNavigationController,
              bottomNavigationController: bottomNavigationController,
            );
          } else {
            return EmptyWhislist(
                bottomNavigationController: bottomNavigationController);
          }
        });
  }
}
