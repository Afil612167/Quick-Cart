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
          style: Theme.of(context).textTheme.headline6,
        ),
        Expanded(child: SizedBox()),
        TextButton(
          onPressed: () {},
          child: Text(
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
//2.741