import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_store/controller/product_controller.dart';
import 'package:e_store/servieces/firebse_current_user.dart';
import 'package:e_store/view/details_screen/details_screen.dart';
import 'package:e_store/view/product_screen/widgets/bell_icon.dart';
import 'package:e_store/view/product_screen/widgets/circle_avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductAppbar extends StatelessWidget {
  final double height;
  final double width;
  final ProductController provider;
  const ProductAppbar(
      {super.key,
      required this.height,
      required this.width,
      required this.provider});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: height / 110,
        ),
        ProfileCircleAvatar(
          height: height,
          width: width,
        ),
        SizedBox(
          width: height / 110,
        ),
        StreamBuilder(
            stream: firestoreCollections,
            builder: (context, snapshot) {
              return Column(
                children: [
                  Text(
                    'Welcome',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  snapshot.hasData
                      ? Text(
                          "${snapshot.data!['firstName']} ${snapshot.data!['secondName']}",
                          style: Theme.of(context).textTheme.headline5,
                          overflow: TextOverflow.ellipsis,
                        )
                      : Text(
                          "Loading",
                          style: Theme.of(context).textTheme.headline5,
                          overflow: TextOverflow.ellipsis,
                        ),
                ],
              );
            }),
        const Expanded(
          child: SizedBox(),
        ),
        noticationIcons(
          ontap: () {
            Get.to(DetailsScreen());
          },
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.black,
            size: 30,
          ),
        ),
        Padding(padding: EdgeInsets.only(right: width / 30)),
      ],
    );
  }
}
