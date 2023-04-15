import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../controller/product_controller.dart';
import '../../prouducts/cat_list.dart';

class CatogoryItem extends StatelessWidget {
  const CatogoryItem({
    Key? key,
    required this.provider,
    required this.index,
  }) : super(key: key);

  final ProductController provider;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        provider.categoryChange(cat: categoryList[index].category);
      },
      child: CircleAvatar(
        radius: 18,
        backgroundColor: secondaryWhite,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 16,
          child: Image(
            image: AssetImage(categoryList[index].image),
          ),
        ),
      ),
    );
  }
}
