import 'package:e_store/controller/bottom_navigation_controller.dart';
import 'package:e_store/controller/product_controller.dart';
import 'package:e_store/view/account_screen/account_screen.dart';
import 'package:e_store/view/cart_screen/cart_screen.dart';
import 'package:e_store/view/catogory_screen/catogory_screen.dart';
import 'package:e_store/view/home_screen/appbar.dart';
import 'package:e_store/view/listing_screens/listing_screens.dart';
import 'package:e_store/view/product_screen/widgets/product_appbar.dart';
import 'package:e_store/view/common_widget/products_grid.dart';
import 'package:e_store/view/product_screen/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import 'package:e_store/constants/colors.dart';
import 'package:e_store/view/common_widget/bottom_navigation_bar.dart';
import 'package:flutter/services.dart';
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
            appBar: navigationProvider.currentIndex == 1
                ? homeScreenappbar(navigationProvider, context, "Favourite",
                    Colors.transparent)
                : navigationProvider.currentIndex == 2
                    ? homeScreenappbar(navigationProvider, context,
                        "Flash sale", Colors.transparent)
                    : navigationProvider.currentIndex == 3
                        ? homeScreenappbar(navigationProvider, context,
                            "Hey QuickCart user", mainWhite)
                        : null,
            backgroundColor: secondaryWhite,
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  if (navigationProvider.currentIndex == 0)
                    SliverAppBar(
                      backgroundColor: mainPink,
                      title: ProductAppbar(height: height, width: width),
                      pinned: true,
                      floating: true,
                      elevation: 0,
                      forceElevated: innerBoxIsScrolled,
                      bottom: AppBar(
                        backgroundColor: mainPink,
                        title: SearchBar(height: height, width: width),
                      ),
                    ),
                ];
              },
              body: navigationProvider.currentIndex == 1
                  ? ListingBody(
                      provider: provider,
                      bottomNavigationController: navigationProvider,
                    )
                  : navigationProvider.currentIndex == 2
                      ? Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: ProductGrid(
                            currentProduct: provider.flashDeals,
                            height: height,
                            width: width,
                            provider: provider,
                            discountPrizeCurrentProduct:
                                provider.discountPrizeFlashDeals,
                          ),
                        )
                      : navigationProvider.currentIndex == 3
                          ? AccountScreen(
                              width: width,
                            )
                          : navigationProvider.currentIndex == 4
                              ? CartScreen()
                              : ProductsScreen(
                                  height: height,
                                  width: width,
                                  provider: provider,
                                ),
            ),
            bottomNavigationBar: navigationProvider.currentIndex != 1
                ? BottomNavigationBarHome()
                : null,
          ),
        );
      });
    });
  }
}
