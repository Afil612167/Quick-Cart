
import 'package:e_store/constants/colors.dart';
import 'package:e_store/view/product_screen/widgets/catogory_viewall_text.dart';
import 'package:flutter/material.dart';

import '../../controller/product_controller.dart';
import 'package:e_store/view/product_screen/widgets/bell_icon.dart';
import 'package:e_store/view/product_screen/widgets/circle_avatar.dart';
import 'package:e_store/view/product_screen/widgets/products_grid.dart';
import '../../prouducts/cat_list.dart';
import 'widgets/search_bar.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({
    Key? key,
    required this.provider,
    required this.height,
    required this.width,
  }) : super(key: key);

  final ProductController provider;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    SingleChildScrollView(
                        child: Text(
                      'Muhammed Afil',
                      style: Theme.of(context).textTheme.headline5,
                    )),
                  ],
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                noticationIcons(
                  ontap: () {},
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
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
            ),CatogoryViewAllText(height: height),
            SizedBox(
              height: height / 15,
              width: width,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: catergoryList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                      left: height / 20,
                    ),
                    child: InkWell(
                      onTap: () {
                        provider.categoryChange(
                            cat: catergoryList[index].category);
                      },
                      child: CircleAvatar(
                        radius: height / 45,
                        backgroundColor: secondaryWhite,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: height / 50,
                          child: Image(
                            image: AssetImage(catergoryList[index].image),
                          ),
                        ),
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
            ProductGrid(
              height: height,
              width: width,
              provider: provider,
            ),
          ],
        ),
      ),
    );
  }
}
