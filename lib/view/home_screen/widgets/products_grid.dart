// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_store/constants/colors.dart';
import 'package:e_store/functions/fetch_product_info.dart';
import 'package:flutter/material.dart';

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
    return SizedBox(
      height: height * 0.6,
       width: width * 0.92,   
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: width * 0.04,
            mainAxisSpacing: 3),
        itemBuilder: (context, index) {
          return GridTile(
            footer: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [],
                )
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: mainPink, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  FutureBuilder(
                    future: fetchProductInfo(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Image(
                            image: NetworkImage(
                                snapshot.data!.products![index].thumbnail),height: height*0.2,
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                  Expanded(
                    child: Text(
                      "Product Name",
                      style: TextStyle(
                          fontSize: height / 45, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
