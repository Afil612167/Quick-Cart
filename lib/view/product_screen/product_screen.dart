import 'package:e_store/constants/colors.dart';
import 'package:e_store/view/product_screen/widgets/category_listview.dart';
import 'package:e_store/view/product_screen/widgets/catogory_viewall_text.dart';
import 'package:e_store/view/product_screen/widgets/feature_store.dart';
import 'package:e_store/view/product_screen/widgets/flashdeal.dart';
import 'package:e_store/view/product_screen/widgets/store_title_area.dart';
import 'package:flutter/material.dart';

import '../../controller/product_controller.dart';
import 'package:e_store/view/common_widget/products_grid.dart';
import '../../prouducts/cat_list.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({
    Key? key,
    required this.provider,
    required this.height,
    required this.width,
  }) : super(key: key);

  final ProductController provider;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          //needs to be changed when search bar is tapped
          const SizedBox(
            height: 10,
          ),
          CatogoryViewAllText(height: height),
          CategoryListview(height: height, width: width, provider: provider),
          const SizedBox(
            height: 10,
          ),
          FlashDeal(width: width),

          const SizedBox(
            height: 10,
          ),
          FeatureStore(provider: provider),
          const SizedBox(
            height: 10,
          ),
          const StoreTitle(title: 'Sponsored'),
          const SizedBox(
            height: 10,
          ),
          ProductGrid(
            discountPrizeCurrentProduct: provider.discountPrizeCurrentProduct,
            currentProduct: provider.currentProduct,
            height: height,
            width: width,
            provider: provider,
          ),
          const SizedBox(
            height: 10,
          ),
          StoreTitle(title: provider.defaultCategory),
          const SizedBox(
            height: 10,
          ),
          ProductGrid(
            discountPrizeCurrentProduct: provider.discountPrizeCurrentProduct,
            currentProduct: provider.currentProduct,
            height: height,
            width: width,
            provider: provider,
          ),
        ],
      ),
    );
  }
}
