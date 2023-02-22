

import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/constants/colors.dart';
import 'package:e_store/functions/fetch_product_info.dart';
import 'package:flutter/material.dart';



class CatogoryGrid extends StatefulWidget {
  const CatogoryGrid({
    Key? key,
    required this.heights,
    required this.width,
  }) : super(key: key);

  final double width;
  final double heights;

  @override
  State<CatogoryGrid> createState() => _CatogoryGridState();
}

class _CatogoryGridState extends State<CatogoryGrid> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.heights / 12,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          return Padding(padding: EdgeInsets.only(left: widget.width / 15));
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: widget.heights / 17,
            width: widget.heights / 17,
            child: Column(
              children: [
                FutureBuilder(
                    future: fetchProductInfo(),
                    builder: (context, snapshot) {
  
                      if (snapshot.hasData) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            width: widget.heights / 17,
                            height: widget.heights / 17,
                            decoration: BoxDecoration(
                                color: secondaryWhite,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        NetworkImage(snapshot.data!.products![0].thumbnail),
                                    fit: BoxFit.contain)),
                          ),
                        );
                      } else {
                        return Container(
                          width: widget.heights / 17,
                          height: widget.heights / 17,
                          decoration: const BoxDecoration(
                              color: secondaryWhite,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(appIcon),
                                  fit: BoxFit.contain)),
                        );
                      }
                    }),
                const Padding(padding: EdgeInsets.only(top: 4)),
              ],
            ),
          );
        },
      ),
    );
  }
}
