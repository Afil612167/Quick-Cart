// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_store/controller/product_controller.dart';
import 'package:e_store/prouducts/product_list.dart';
import 'package:e_store/servieces/firebse_current_user.dart';
import 'package:flutter/material.dart';

import '../../../constants/asset_images.dart';
import '../../../constants/colors.dart';

class ProductImageSlider extends StatelessWidget {
  final ProductController provider;
  const ProductImageSlider({
    Key? key,
    required this.width,
    required this.provider,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: mainWhite,
          height: 220,
          width: width,
          child: provider.currentProduct[provider.detailsIndex].images.length >
                  1
              ? Carousel(
                  boxFit: BoxFit.cover,
                  autoplay: false,
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(milliseconds: 1000),
                  dotSize: 6.0,
                  dotIncreasedColor: Color(0xFFFF335C),
                  dotBgColor: Colors.transparent,
                  dotPosition: DotPosition.bottomCenter,
                  showIndicator: true,
                  moveIndicatorFromBottom: 1,
                  indicatorBgPadding: 7.0,
                  images: [
                      provider.currentProduct[provider.detailsIndex].images
                              .isNotEmpty
                          ? CachedNetworkImage(
                              imageUrl: provider
                                  .currentProduct[provider.detailsIndex]
                                  .images[0],
                              placeholder: (context, url) => Image.asset(
                                placeholder,
                                fit: BoxFit.contain,
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            )
                          : null,
                      provider.currentProduct[provider.detailsIndex].images
                                  .length >
                              1
                          ? CachedNetworkImage(
                              imageUrl: provider
                                  .currentProduct[provider.detailsIndex]
                                  .images[1],
                              placeholder: (context, url) => Image.asset(
                                placeholder,
                                fit: BoxFit.contain,
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            )
                          : null,
                      provider.currentProduct[provider.detailsIndex].images
                                  .length >
                              2
                          ? CachedNetworkImage(
                              imageUrl: provider
                                  .currentProduct[provider.detailsIndex]
                                  .images[2],
                              placeholder: (context, url) => Image.asset(
                                placeholder,
                                fit: BoxFit.contain,
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            )
                          : null,
                      provider.currentProduct[provider.detailsIndex].images
                                  .length >
                              3
                          ? CachedNetworkImage(
                              imageUrl: provider
                                  .currentProduct[provider.detailsIndex]
                                  .images[3],
                              placeholder: (context, url) => Image.asset(
                                placeholder,
                                fit: BoxFit.contain,
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            )
                          : null,
                      provider.currentProduct[provider.detailsIndex].images
                                  .length >
                              4
                          ? CachedNetworkImage(
                              imageUrl: provider
                                  .currentProduct[provider.detailsIndex]
                                  .images[3],
                              placeholder: (context, url) => Image.asset(
                                placeholder,
                                fit: BoxFit.contain,
                              ),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            )
                          : null,
                    ])
              : CachedNetworkImage(
                  imageUrl:
                      provider.currentProduct[provider.detailsIndex].images[0],
                  placeholder: (context, url) => Image.asset(
                    placeholder,
                    fit: BoxFit.contain,
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: CircleAvatar(
            backgroundColor: mainWhite,
            child: StreamBuilder(
                stream: wishListFireStore
                    .doc(provider.currentProduct[provider.detailsIndex].title)
                    .snapshots(),
                builder: (context, snapshot) {
                  return IconButton(
                    onPressed: () async {
                      print(provider.currentProduct[provider.detailsIndex]);

                      products;
                      var data = {
                        "title": provider
                            .currentProduct[provider.detailsIndex].title,
                        "price": provider
                            .currentProduct[provider.detailsIndex].price,
                        'discountPercentage': provider
                            .currentProduct[provider.detailsIndex]
                            .discountPercentage,
                        'rating': provider
                            .currentProduct[provider.detailsIndex].rating,
                        'stock': provider
                            .currentProduct[provider.detailsIndex].stock,
                        'brand': provider
                            .currentProduct[provider.detailsIndex].brand,
                        'category': provider
                            .currentProduct[provider.detailsIndex].category,
                        'thumbnail': provider
                            .currentProduct[provider.detailsIndex].thumbnail,
                        'images': provider
                            .currentProduct[provider.detailsIndex].images,
                        'discountPrizeCurrentProduct': provider
                            .discountPrizeCurrentProduct[provider.detailsIndex]
                      };
                      if (snapshot.data?.exists == false) {
                        wishListFireStore
                            .doc(provider
                                .currentProduct[provider.detailsIndex].title)
                            .set(data)
                            .then((value) => print("wishlist saved"));
                      } else {
                        wishListFireStore
                            .doc(provider
                                .currentProduct[provider.detailsIndex].title)
                            .delete()
                            .then((value) => print("wishList Deleated"));
                      }
                    },
                    icon: snapshot.data?.exists == true
                        ? Icon(
                            Icons.favorite,
                            color: mainPink,
                          )
                        : Icon(Icons.favorite_border_outlined),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
