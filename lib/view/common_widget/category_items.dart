import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../controller/product_controller.dart';
import '../../prouducts/cat_list.dart';

class CatogoryItem extends StatelessWidget {
  const CatogoryItem({
    Key? key,
    required this.provider,
    required this.index,
    required this.height,
  }) : super(key: key);

  final ProductController provider;
  final int index;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        provider.categoryChange(cat: categoryList[index].category);
      },
      child: CircleAvatar(
        radius: height / 45,
        backgroundColor: secondaryWhite,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: height / 50,
          child: Image(
            image: AssetImage(categoryList[index].image),
          ),
        ),
      ),
    );
  }
}
