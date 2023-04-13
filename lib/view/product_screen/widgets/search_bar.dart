
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height / 17,
        width: width * 0.85,
        decoration: BoxDecoration(
            color: mainGrey.withOpacity(0.6),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: width / 15)),
            const Icon(Icons.search_outlined),
            Padding(padding: EdgeInsets.only(left: width / 20)),
            const Expanded(
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    border: InputBorder.none,hintText:'Search all'),
                cursorColor: mainBlack,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width / 20),
            )
          ],
        ));
  }
}
