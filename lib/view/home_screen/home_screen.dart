import 'package:e_store/controller/bottom_navigation_controller.dart';
import 'package:e_store/controller/product_controller.dart';
import 'package:e_store/view/common_widget/custom_button.dart';
import 'package:e_store/view/listing_screens/listing_screens.dart';
import 'package:flutter/material.dart';

import 'package:e_store/constants/colors.dart';
import 'package:e_store/view/common_widget/bottom_navigation_bar.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../product_screen/product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProductController>().productUpdate();
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // print("Height is ${height * 0.02741}");
    return Consumer<ProductController>(builder: (context, provider, _) {
      return Consumer<BottomNavigationController>(
          builder: (context, navigationProvider, _) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: secondaryWhite,
            appBar: navigationProvider.currentIndex != 0
                ? AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    leading: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: FittedBox(child: CustomButton(ontap: () {
                        navigationProvider.indexUpdate(value: 0);
                      })),
                    ),
                    title: Text(
                      "Favourite",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    centerTitle: true,
                  )
                : null,
            body: navigationProvider.currentIndex == 1
                ? ListingBody(provider: provider,)
                : ProductsScreen(
                    height: height,
                    width: width,
                    provider: provider,
                  ),
            bottomNavigationBar: const BottomNavigationBarHome(),
          ),
        );
      });
    });
  }
}
