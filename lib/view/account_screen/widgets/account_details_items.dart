import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../../constants/colors.dart';

class AccountSettingsItem extends StatelessWidget {
  AccountSettingsItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.ontap,
  }) : super(key: key);
  final Widget icon;
  final String title;
  final Callback ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        TextButton(
            onPressed: ontap,
            child: Row(
              children: [
                const SizedBox(width: 15),
                icon,
                const SizedBox(width: 15),
                Text(
                  title,
                  style:
                      const TextStyle(color: mainBlack, fontWeight: FontWeight.w500),
                ),
                const Expanded(child: SizedBox()),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                  color: mainBlack.withOpacity(0.5),
                ),
                const SizedBox(
                  width: 15,
                )
              ],
            )),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
