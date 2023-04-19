// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_store/view/product_screen/widgets/store_title_area.dart';
import 'package:flutter/material.dart';

import 'package:e_store/constants/colors.dart';
import 'package:e_store/controller/product_controller.dart';
import 'package:e_store/model/product_model.dart';
import 'package:e_store/prouducts/product_list.dart';

import '../../common_widget/rating_fild.dart';

class FeatureStore extends StatelessWidget {
  final ProductController provider;
  const FeatureStore({
    Key? key,
    required this.provider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StoreTitle(
          title: 'Feature Store',
        ),
        SizedBox(
          height: 190,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: provider.currentProduct.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: FeatureStoreItem(
                    currentProduct: provider.currentProduct,
                    index: index,
                    discountPrizeCurrentProduct:
                        provider.discountPrizeCurrentProduct),
              );
            },
          ),
        ),
      ],
    );
  }
}

class FeatureStoreItem extends StatelessWidget {
  final List<Product> currentProduct;
  final int index;
  final List discountPrizeCurrentProduct;

  const FeatureStoreItem({
    Key? key,
    required this.currentProduct,
    required this.index,
    required this.discountPrizeCurrentProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mainWhite,
      height: 180,
      width: 150,
      child: Column(
        children: [
          AspectRatio(
              aspectRatio: 1.2,
              child: Image.network(currentProduct[index].thumbnail)),
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
                rating: currentProduct[index].rating, itemSize: 12,
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
                      style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 15,
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
              const SizedBox(
                width: 10,
              )
            ],
          ),
          const Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
