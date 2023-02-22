
import 'package:flutter/material.dart';

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
          style: TextStyle(
              fontSize: height / 36, fontWeight: FontWeight.w500),
        ),
        const Expanded(
          child: SizedBox(),
        ),
                const Icon(Icons.arrow_circle_right_outlined),
        SizedBox(
          width: height / 60,
        ),
      ],
    );
  }
}
