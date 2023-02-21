import 'package:e_store/functions/fetch_product_info.dart';
import 'package:e_store/view/home_screen/widgets/SearchBar.dart';
import 'package:e_store/view/home_screen/widgets/bell_icon.dart';
import 'package:e_store/view/home_screen/widgets/circle_avatar.dart';
import 'package:e_store/view/home_screen/widgets/discount_slider.dart';
import 'package:e_store/view/home_screen/widgets/products_grid.dart';
import 'package:flutter/material.dart';
import 'package:e_store/constants/colors.dart';

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
    print(height);
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainWhite,
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                                print(snapshot.data!.products![0].brand
                                    .toString());
                                return Text(
                                  snapshot.data!.products![0].brand,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: height / 40),
                                );
                              } else {
                                return CircularProgressIndicator();
                              }
                            }),
                      ),
                    ],
                  ),
                  Expanded(
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
              SizedBox(
                height: height / 110,
              ),
              DiscountSlider(width: width),
              SizedBox(
                height: height / 110,
              ),
              ProductGrid(height: height, width: width),
            ],
          ),
        ),bottomNavigationBar:    BottomNavigationBar(items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.abc),label: ''
                ),
                BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.r_mobiledata),label: '')
              ]),
      ),
    );
  }
}
