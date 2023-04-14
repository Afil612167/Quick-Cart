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
    return InkWell(
        child: Container(
      width: width * 0.95,
      height: 40,
      decoration: BoxDecoration(
          color: mainGrey.withAlpha(160),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          const Spacer(
            flex: 1,
          ),
          Icon(
            Icons.search,
            color: mainBlack.withOpacity(0.6),
          ),
          const Spacer(
            flex: 1,
          ),
          Flexible(
            flex: 40,
            child: Text(
              "Search for Product Brands and Much More",
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: mainBlack.withOpacity(0.8)),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    ));
  }
}
