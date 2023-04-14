import 'package:e_store/constants/colors.dart';
import 'package:e_store/controller/product_controller.dart';
import 'package:e_store/prouducts/cat_list.dart';
import 'package:e_store/view/common_widget/category_items.dart';
import 'package:e_store/view/home_screen/home_screen.dart';
import 'package:e_store/view/listing_screens/product_listing_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../common_widget/custom_button.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Consumer<ProductController>(builder: (context, provider, _) {
      return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: mainWhite,
            leading: SizedBox(
              height: 20,
              child: FittedBox(
                child: CustomButton(
                  ontap: () {
                    Get.back();
                  },
                ),
              ),
            ),
            title: Text(
              "Categories",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            centerTitle: true,
          ),
          backgroundColor: secondaryWhite,
          body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: categoryList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        provider.categoryChange(
                            cat: categoryList[index].category);
                        Get.offAll(ProductListing());
                      },
                      child: Container(
                        color: mainWhite,
                        child: Column(
                          children: [
                            const Spacer(flex: 3),
                            CatogoryItem(
                                provider: provider,
                                index: index,
                                height: height + 100),
                            const Spacer(
                              flex: 1,
                            ),
                            Text(categoryList[index].category),
                            const Spacer(
                              flex: 2,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )));
    });
  }
}
