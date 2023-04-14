import 'package:e_store/view/catogory_screen/catogory_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatogoryViewAllText extends StatelessWidget {
  const CatogoryViewAllText({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: height / 80,
        ),
        Text(
          'Catogory',
          style: Theme.of(context).textTheme.headline6,
        ),
        const Expanded(child: SizedBox()),
        TextButton(
          onPressed: () {
            Get.to(const CategoryScreen());
          },
          child: const Text(
            "view all",
            style: TextStyle(color: Colors.black),
          ),
        ),
        SizedBox(
          width: height / 60,
        ),
      ],
    );
  }
}