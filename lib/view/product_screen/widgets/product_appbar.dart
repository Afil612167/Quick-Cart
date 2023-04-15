import 'package:e_store/view/product_screen/widgets/bell_icon.dart';
import 'package:e_store/view/product_screen/widgets/circle_avatar.dart';
import 'package:flutter/material.dart';

class ProductAppbar extends StatelessWidget {
  final double height;
  final double width;
  const ProductAppbar({super.key, required this.height, required this.width});

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
        Column(
          children: [
            Text(
              'Welcome',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'Muhammed Afil',
              style: Theme.of(context).textTheme.headline5,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        const Expanded(
          child: SizedBox(),
        ),
        noticationIcons(
          ontap: () {},
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
