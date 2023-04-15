

import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';

class EditSmallTitle extends StatelessWidget {
  final String title;
  const EditSmallTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(color: mainGrey.withOpacity(0.9)),
        ),
      ],
    );
  }
}
