import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/controller/bottom_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants/colors.dart';

class FlashDeal extends StatelessWidget {
  const FlashDeal({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationController>(
        builder: (context, bottomNavigationController, _) {
      return Card(
        elevation: 5,
        color: Colors.transparent,
        child: Container(
          height: 130,
          width: width * 0.92,
          decoration: BoxDecoration(
              color: mainPink.withAlpha(180),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "Flash sale",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Icon(Icons.flash_on_rounded)
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    "Exciting deals",
                    style: TextStyle(
                        color: mainWhite.withAlpha(180), fontSize: 20),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      bottomNavigationController.indexUpdate(value: 2);
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => mainWhite),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ))),
                    child: const Text(
                      "Explore now",
                      style: TextStyle(color: mainPink),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              Image.asset(
                shoppingbag,
                fit: BoxFit.contain,
              )
            ],
          ),
        ),
      );
    });
  }
}
