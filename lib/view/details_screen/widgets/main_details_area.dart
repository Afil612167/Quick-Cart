import 'package:e_store/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../controller/product_controller.dart';
import '../../common_widget/rating_fild.dart';

class MainDetailsArea extends StatelessWidget {
  final ProductController provider;
  const MainDetailsArea({
    Key? key,
    required this.width,
    required this.provider,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainWhite,
      height: 220,
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(provider.currentProduct[provider.detailsIndex].brand),
            Spacer(flex: 1),
            Flexible(
                flex: 10,
                child: Text(
                  provider.currentProduct[provider.detailsIndex].title,
                  style: Theme.of(context).textTheme.subtitle2,
                )),
            const Spacer(flex: 1),
            Row(
              children: [
                RatingIndicator(
                    itemSize: 16,
                    rating:
                        provider.currentProduct[provider.detailsIndex].rating),
                SizedBox(
                  width: 10,
                ),
                Text(
                  provider.currentProduct[provider.detailsIndex].rating
                      .toString(),
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ],
            ),
            Spacer(flex: 1),
            Chip(
                backgroundColor: Colors.greenAccent,
                label: Text(
                  " \$ ${provider.currentProduct[provider.detailsIndex].price.toInt() - provider.discountPrizeCurrentProduct[provider.detailsIndex].toInt()} off",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: mainWhite),
                )),
            Spacer(
              flex: 1,
            ),
            Text.rich(TextSpan(
                text:
                    "${provider.currentProduct[provider.detailsIndex].discountPercentage}% off  ",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.w300),
                children: [
                  TextSpan(
                      text: provider.currentProduct[provider.detailsIndex].price
                          .toInt()
                          .toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: mainGrey,
                          decoration: TextDecoration.lineThrough),
                      children: [
                        TextSpan(
                          text:
                              "  \$${provider.discountPrizeCurrentProduct[provider.detailsIndex]}",
                          style: TextStyle(
                              fontSize: 16,
                              color: mainBlack,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w600),
                        ),
                      ])
                ])),
            Spacer(
              flex: 1,
            ),
            Text('+\$69 Secured Packing Fee'),
            Spacer(
              flex: 2,
            ),
            Row(
              children: [
                Text("Deliver to:"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "To -673586",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Expanded(child: SizedBox()),
                InkWell(
                  child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all()),
                      child: Center(
                          child: Text(
                        "Change",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: mainPink),
                      ))),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
