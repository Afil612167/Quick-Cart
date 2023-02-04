import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_store/view/home_screen/widgets/SearchBar.dart';
import 'package:e_store/view/home_screen/widgets/bell_icon.dart';
import 'package:e_store/view/home_screen/widgets/catogory_listview.dart';
import 'package:e_store/view/home_screen/widgets/catogory_viewall_text.dart';
import 'package:e_store/view/home_screen/widgets/circle_avatar.dart';
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
    print("widht is" + width.toString());
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainWhite,
        body: Column(
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
                      child: Text(
                        'Unais Unu',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: height / 40),
                      ),
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
            CatogoryViewAllText(height: height),
            SizedBox(
              height: height / 110,
            ),
            CatogoryGrid(
              heights: height,
              width: width,
            ),
            // Container(height: height/8,width: width*0.8,decoration: BoxDecoration(color: mainPink),)
            DiscountSlider(width: width)
          ],
        ),
      ),
    );
  }
}

class DiscountSlider extends StatelessWidget {
  const DiscountSlider({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
      items: [
        Container(
          width: width / 2,
          color: Colors.blue,
          margin: EdgeInsets.only(left: 10),
        ),
        Container(
          width: width / 2,
          color: Colors.blue,
          margin: EdgeInsets.only(left: 10),
        ),
        Container(
          width: width / 2,
          color: Colors.blue,
          margin: EdgeInsets.only(left: 10),
        ),
        Container(
          width: width / 2,
          color: Colors.blue,
          margin: EdgeInsets.only(left: 10),
        )
      ],
    );
  }
}
