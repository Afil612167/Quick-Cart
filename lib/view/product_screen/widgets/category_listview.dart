import 'package:e_store/controller/product_controller.dart';
import 'package:e_store/prouducts/cat_list.dart';
import 'package:flutter/material.dart';
import '../../common_widget/category_items.dart';

class CategoryListview extends StatelessWidget {
  const CategoryListview({
    Key? key,
    required this.height,
    required this.width,
    required this.provider,
  }) : super(key: key);

  final double height;
  final double width;
  final ProductController provider;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 70,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left:20,
            ),
            child: Column(
              children: [
                const Spacer(
                  flex: 4,
                ),
                CatogoryItem(
                  provider: provider,
                  index: index,
                ),
                const Spacer(
                  flex: 1,
                ),
                Text(categoryList[index].category),
              ],
            ),
          );
        },
      ),
    );
  }
}
