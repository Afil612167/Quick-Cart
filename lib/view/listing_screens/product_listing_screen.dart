import 'package:e_store/constants/colors.dart';
import 'package:e_store/controller/product_controller.dart';
import 'package:e_store/view/common_widget/custom_button.dart';
import 'package:e_store/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../common_widget/products_grid.dart';

class ProductListing extends StatelessWidget {
  const ProductListing({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Consumer<ProductController>(builder: (context, provider, _) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: mainWhite,
          elevation: 0,
          leading: CustomButton(
            ontap: () {
              Get.offAll(HomeScreen());
            },
          ),
          title: Text(
            provider.defaultCategory,
            style: TextStyle(color: mainBlack),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Center(
              child: ProductGrid(
                discountPrizeCurrentProduct:
                    provider.discountPrizeCurrentProduct,
                currentProduct: provider.currentProduct,
                height: height,
                width: width,
                provider: provider,
              ),
            ),
          ],
        ),
      );
    });
  }
}
