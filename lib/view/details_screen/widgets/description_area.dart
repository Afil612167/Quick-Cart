// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_store/controller/product_controller.dart';

import '../../../constants/colors.dart';

class DescriptionArea extends StatelessWidget {
  final ProductController provider;

  const DescriptionArea({
    Key? key,
    required this.provider,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: mainWhite,
      child: Padding(
        padding: EdgeInsets.only(top: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Description",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(provider.currentProduct[provider.detailsIndex].description),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
