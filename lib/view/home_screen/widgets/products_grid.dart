import 'package:e_store/constants/asset_images.dart';
import 'package:flutter/material.dart';

import 'package:e_store/constants/colors.dart';
import 'package:e_store/functions/fetch_product_info.dart';

class ProductGrid extends StatelessWidget {
  double height;
  double width;
  ProductGrid({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryWhite,
      height: height * 0.6,
      width: width * 0.92,
      child: FutureBuilder(
          future: fetchProductInfo(),
          builder: (context, productData) {
            return GridView.builder(
              itemCount:
                  productData.hasData ? productData.data!.products.length : 12,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: width * 0.04,
                  mainAxisSpacing: height / 100),
              itemBuilder: (context, index) {
                return GridTile(
                  child: Container(
                    decoration: BoxDecoration(
                        color: mainWhite,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        productData.hasData
                            ? Container(
                                height: height * 0.16,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: NetworkImage(productData
                                          .data!.products[index].thumbnail)),
                                ),
                              )
                            : Container(
                                height: height * 0.16,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        // 'https://img.freepik.com/free-vector/shopping-cart-realistic_1284-6011.jpg?w=2000',
                                        welcome),
                                  ),
                                ),
                              ),
                        Expanded(child: SizedBox()),
                        Text(
                          "poco m2pro and where are you from and we can say all",
                          style: TextStyle(
                              fontSize:
                                  height < 600 ? height / 45 : height / 50,
                              fontWeight: FontWeight.w500),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                text: '\$ ${height.toInt()} ',
                                style: TextStyle(
                                    fontSize: height < 600
                                        ? height / 40
                                        : height / 45,
                                    color: mainPink,
                                    fontWeight: FontWeight.w500),
                                children: [
                                  TextSpan(
                                      text: ' \$ ',
                                      style: TextStyle(
                                          fontSize: height < 600
                                              ? height / 52
                                              : height / 55,
                                          color: mainGrey,
                                          fontWeight: FontWeight.w300),
                                      children: [
                                        TextSpan(
                                          text: "${width.toInt()}",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              fontSize: height < 600
                                                  ? height / 52
                                                  : height / 55,
                                              color: mainGrey,
                                              fontWeight: FontWeight.w300),
                                        )
                                      ]),
                                ],
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Card(
                              color: secondaryPink,
                              child: Text(
                                " 50% ",
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
                            Text("data"),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
