// ignore_for_file: public_member_api_docs, sort_constructors_firs

import 'package:flutter/material.dart';

import 'package:e_store/constants/colors.dart';
import 'package:e_store/controller/product_controller.dart';

class ListingBody extends StatelessWidget {
  final ProductController provider;

  const ListingBody({
    Key? key,
    required this.provider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WishListBody(
      provider: provider,
    );
  }
}

class WishListBody extends StatelessWidget {
  final ProductController provider;
  const WishListBody({
    Key? key,
    required this.provider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: 33,
      itemBuilder: (context, index) => Padding(
        padding:  EdgeInsets.only(top: 5,bottom: 5),
        child: Container(
          width: width * 0.92,
          height: 120,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: mainGrey.withOpacity(0.5),
                blurRadius: 1.2,
                offset: Offset(0, 1))
          ], borderRadius: BorderRadius.circular(5), color: mainWhite),
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 10,
                    right: 10,
                    left: 10,
                  ),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: mainGrey.withOpacity(0.5),
                        image: DecorationImage(
                            image: NetworkImage(
                                provider.currentProduct[0].thumbnail))),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: width * 0.92 - 120,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Current product",
                                style: Theme.of(context).textTheme.subtitle1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text.rich(TextSpan(
                                      text: "\$ prize   ",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                      children: [
                                        TextSpan(
                                            text: "  \$ prize",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                decoration:
                                                    TextDecoration.lineThrough)),
                                      ])),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 8)),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text("Add to cart"),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: mainPink),
                              )
                            ],
                          ),
                          IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
