// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:e_store/constants/colors.dart';
import 'package:e_store/controller/bottom_navigation_controller.dart';
import 'package:e_store/view/common_widget/rating_fild.dart';

import '../../../controller/product_controller.dart';

class WishListBody extends StatelessWidget {
  final ProductController provider;
  final BottomNavigationController navigationController;
  const WishListBody({
    Key? key,
    required this.provider,
    required this.navigationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () {
        return navigationController.indexUpdate(value: 0);
      },
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 33,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              width: width * 0.92,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: mainGrey.withOpacity(0.5),
                    blurRadius: 1.2,
                    offset: Offset(0, 1))
              ], borderRadius: BorderRadius.circular(5), color: mainWhite),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 10,
                      right: 10,
                      left: 10,
                    ),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: mainGrey.withOpacity(0.5),
                          image: DecorationImage(
                              image: NetworkImage(
                                  provider.currentProduct[0].thumbnail))),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.92 - 120,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Current product",
                                  style: Theme.of(context).textTheme.subtitle1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                RatingIndicator(rating: 4.5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text.rich(TextSpan(
                                        text: "\$ price   ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                        children: [
                                          TextSpan(
                                              text: "  \$ price",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  decoration: TextDecoration
                                                      .lineThrough)),
                                        ])),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 8)),
                                InkWell(
                                  onTap: () {
                                    Get.snackbar("Successfully Added ",
                                        'Your Product is in your cart',
                                        snackPosition: SnackPosition.BOTTOM);
                                  },
                                  child: Card(
                                      color: mainPink,
                                      child: SizedBox(
                                        height: 24,
                                        width: 80,
                                        child: Column(
                                          children: [
                                            Spacer(),
                                            Text(
                                              "Add to Cart",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                            Spacer()
                                          ],
                                        ),
                                      )),
                                )
                              ],
                            ),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.delete)),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
