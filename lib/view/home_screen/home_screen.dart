import 'package:flutter/material.dart';

import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/constants/colors.dart';
import 'package:e_store/functions/fetch_product_info.dart';
import 'package:e_store/view/home_screen/widgets/SearchBar.dart';
import 'package:e_store/view/home_screen/widgets/bottom_navigation_bar.dart';
import 'package:e_store/view/home_screen/widgets/bell_icon.dart';
import 'package:e_store/view/home_screen/widgets/circle_avatar.dart';
import 'package:e_store/view/home_screen/widgets/products_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainWhite,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: height / 110,
              ),
              Row(
                children: [
                  SizedBox(
                    width: height / 110,
                  ),
                  ProfileCircleAvatar(
                    height: height,
                    width: width,
                  ),
                  SizedBox(
                    width: height / 110,
                  ),
                  Column(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: height / 45),
                      ),
                      SingleChildScrollView(
                        child: FutureBuilder(
                            future: fetchProductInfo(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                  snapshot.data!.products![0].brand,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: height / 40),
                                );
                              } else {
                                return const CircularProgressIndicator();
                              }
                            }),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  myAppBarIcon(),
                  Padding(padding: EdgeInsets.only(right: width / 30)),
                ],
              ),
              SizedBox(
                height: height / 40,
              ),
              SearchBar(height: height, width: width),
              //needs to be changed when search bar is tapped
              SizedBox(
                height: height / 110,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width / 40,
                  ),
                  const Text(
                    'Catogories',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: height / 15,
                width: width,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: height / 15,
                      width: height / 20,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return CircleAvatar(
                      radius: height / 45,
                      backgroundColor: secondaryWhite,
                      child: CircleAvatar(
                        radius: height / 50,
                        child: Image(
                          image: AssetImage(catogoryImageList[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                color: secondaryWhite,
                height: height / 110,
              ),
              ProductGrid(height: height, width: width),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarHome(),
      ),
    );
  }
}
