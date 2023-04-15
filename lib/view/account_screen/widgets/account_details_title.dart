// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AccountDetailsTitle extends StatelessWidget {
  const AccountDetailsTitle({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 15),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        )
      ],
    );
  }
}
