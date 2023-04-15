// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:e_store/constants/colors.dart';
import 'package:e_store/controller/product_controller.dart';
import 'package:e_store/model/product_model.dart';

import 'rating_fild.dart';

class ProductGrid extends StatelessWidget {
  double height;
  double width;
  ProductController provider;
  List<Product> currentProduct;
  List discountPrizeCurrentProduct;

  ProductGrid({
    Key? key,
    required this.height,
    required this.width,
    required this.provider,
    required this.currentProduct,
    required this.discountPrizeCurrentProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: secondaryWhite,
        width: width * 0.92,
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: currentProduct.length,
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return GridTile(
              child: Container(
                color: mainWhite,
                child: Column(
                  children: [
                    AspectRatio(
                        aspectRatio: 1.2,
                        child: SizedBox(
                            child: Image.network(
                                currentProduct[index].thumbnail))),
                    const Spacer(
                      flex: 2,
                    ),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        Flexible(
                          child: Text(
                            currentProduct[index].title,
                            style: const TextStyle(fontWeight: FontWeight.w400),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        RatingIndicator(
                          rating: currentProduct[index].rating,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        Text.rich(
                          TextSpan(
                            text: '\$ ${discountPrizeCurrentProduct[index]} ',
                            style: const TextStyle(
                                color: mainPink, fontWeight: FontWeight.w500),
                            children: [
                              TextSpan(
                                text:
                                    //for discount prize calculating
                                    " \$ ${currentProduct[index].price.toInt()}",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
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
                        const Expanded(child: SizedBox()),
                        Card(
                          color: secondaryPink,
                          child: Text(
                            " ${currentProduct[index].discountPercentage.toInt()}%",
                            style: const TextStyle(color: mainPink),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.03,
                        )
                      ],
                    ),
                    const Spacer(
                      flex: 1,
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}
