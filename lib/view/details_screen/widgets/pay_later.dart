
import 'package:flutter/material.dart';

import '../../../constants/asset_images.dart';
import '../../../constants/colors.dart';

class PayLater extends StatelessWidget {
  const PayLater({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: mainWhite,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Image.asset(
            appIcon,
            height: 35,
          ),
          Text(
            'Pay later',
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(fontStyle: FontStyle.italic),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Credit upto \$10000',
                  style: Theme.of(context).textTheme.bodySmall),
              Text('Shpo Now & Pay Next Month or in EMIs',
                  style: Theme.of(context).textTheme.bodySmall),
              Text('Coming Soon >',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(color: mainPink)),
            ],
          ),
        ],
      ),
    );
  }
}
