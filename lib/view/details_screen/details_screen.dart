// import 'package:carousel_pro/carousel_pro.dart';

import 'package:e_store/controller/product_controller.dart';
import 'package:e_store/view/details_screen/widgets/description_area.dart';
import 'package:e_store/view/details_screen/widgets/main_details_area.dart';
import 'package:e_store/view/details_screen/widgets/pay_later.dart';
import 'package:e_store/view/details_screen/widgets/product_image_slider.dart';
import 'package:e_store/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../constants/colors.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Consumer<ProductController>(builder: (context, provider, _) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: secondaryWhite,
          appBar: AppBar(
            backgroundColor: mainPink,
            leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {
                    Get.offAll(const HomeScreen());
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                )),
            title: Text(provider.currentProduct[0].title),
          ),
          body: Column(
            children: [
              SizedBox(
                height: height - 136,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ProductImageSlider(
                        width: width,
                        provider: provider,
                      ),
                      MainDetailsArea(
                        width: width,
                        provider: provider,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const PayLater(),
                      const SizedBox(
                        height: 5,
                      ),
                      DescriptionArea(
                        width: width,
                        provider: provider,
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                      color: mainWhite,
                      width: width / 2,
                      height: 42,
                      child: const Center(child: Text("Add To Cart"))),
                  Container(
                    color: Colors.amber[400],
                    width: width / 2,
                    height: 42,
                    child: const Center(
                      child: Text("Buy now"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
