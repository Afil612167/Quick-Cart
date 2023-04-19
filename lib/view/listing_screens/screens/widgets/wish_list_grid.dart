// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../controller/product_controller.dart';
import '../../../common_widget/rating_fild.dart';
import '../../../details_screen/details_screen.dart';

class WishListGrid extends StatelessWidget {
  double height;
  double width;
  ProductController provider;
  final AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot;

  WishListGrid({
    Key? key,
    required this.height,
    required this.width,
    required this.provider,
    required this.snapshot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: secondaryWhite,
        width: width * 0.92,
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: snapshot.data!.docs.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return GridTile(
              child: InkWell(
                onTap: () {
                  provider.detailsindexUpdate(index: index);
                  Get.to(DetailsScreen());
                },
                child: Container(
                  color: mainWhite,
                  child: Column(
                    children: [
                      AspectRatio(
                          aspectRatio: 1.2,
                          child: SizedBox(
                              child: Image.network(
                                  snapshot.data!.docs[index]['thumbnail']))),
                      const Spacer(
                        flex: 1,
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(left: 10)),
                          Flexible(
                            child: Text(
                              snapshot.data!.docs[index]["title"],
                              style:
                                  const TextStyle(fontWeight: FontWeight.w400),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(left: 10)),
                          RatingIndicator(
                            rating: snapshot.data!.docs[index]['rating'],
                            itemSize: 12,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Padding(padding: EdgeInsets.only(left: 10)),
                          Text.rich(
                            TextSpan(
                              text:
                                  '\$ ${snapshot.data!.docs[index]['discountPrizeCurrentProduct']} ',
                              style: const TextStyle(
                                  color: mainPink, fontWeight: FontWeight.w500),
                              children: [
                                TextSpan(
                                  text:
                                      //for discount prize calculating
                                      " \$ ${snapshot.data!.docs[index]['price']}",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 18,
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
                              " ${snapshot.data!.docs[index]["discountPercentage"].toInt()}%",
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
                      ),
                      Container(
                        width: width / 2 - 40,
                        height: 27,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Center(
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(color: mainPink),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
