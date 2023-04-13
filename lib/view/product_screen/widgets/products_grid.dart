// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/constants/colors.dart';
import 'package:e_store/controller/product_controller.dart';

class ProductGrid extends StatelessWidget {
  double height;
  double width;
  ProductController provider;
  ProductGrid({
    Key? key,
    required this.height,
    required this.width,
    required this.provider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: secondaryWhite,
        width: width * 0.92,
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: provider.currentProduct.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: width * 0.04,
              mainAxisSpacing: height / 100),
          itemBuilder: (context, index) {
            return GridTile(
              child: Container(
                decoration: BoxDecoration(
                    color: mainWhite, borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Container(
                      height: height * 0.16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(
                              provider.currentProduct[index].thumbnail),
                        ),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Text(
                      provider.currentProduct[index].title,
                      style: TextStyle(
                          fontSize: height < 600 ? height / 45 : height / 50,
                          fontWeight: FontWeight.w500),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            text:
                                '\$ ${provider.discountPrizeCurrentProduct[index]} ',
                            style: TextStyle(
                                fontSize: height < 600
                                    ? width < 500
                                        ? height / 42
                                        : width / 42
                                    : height / 45,
                                color: mainPink,
                                fontWeight: FontWeight.w500),
                            children: [
                              TextSpan(
                                text:
                                    //for discount prize calculating
                                    " \$ ${provider.currentProduct[index].price.toInt()}",
                                style: TextStyle(
                                    decoration:
                                        TextDecoration.lineThrough,
                                    fontSize: height < 600
                                        ? width < 500
                                            ? height / 52
                                            : width / 52
                                        : height / 55,
                                    color: mainGrey,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Card(
                          color: secondaryPink,
                          child: Text(
                            " ${provider.currentProduct[index].discountPercentage.toInt()}%",
                            style: TextStyle(color: mainPink),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("Rating"),
                        Padding(padding: EdgeInsets.only(left: width / 30)),
                        Text("rating"),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
