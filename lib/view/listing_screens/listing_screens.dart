import 'package:e_store/view/listing_screens/screens/wish_list.dart';
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
    return WishListBody(
      provider: provider,
      navigationController: bottomNavigationController,
    );
  }
}
