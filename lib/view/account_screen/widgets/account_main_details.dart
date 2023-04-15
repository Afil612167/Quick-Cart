import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../utils/lists.dart';

class AccountMainDetails extends StatelessWidget {
  const AccountMainDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 4,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(left: 10, right: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 3.5,
          crossAxisCount: 2,
          crossAxisSpacing: 30,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              border: Border.all(color: mainPink.withOpacity(0.5))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 24,
                child: Image(
                  image: AssetImage(
                    accountList[index][0],
                  ),
                ),
              ),
              Text(
                accountList[index][1],
                style: const TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
        );
      },
    );
  }
}
