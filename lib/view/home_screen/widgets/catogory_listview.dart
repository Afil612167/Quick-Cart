import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_store/constants/asset_images.dart';
import 'package:e_store/constants/colors.dart';
import 'package:e_store/view/home_screen/functions/api_calling_function.dart';
import 'package:flutter/material.dart';

class CatogoryGrid extends StatelessWidget {
  const CatogoryGrid({
    Key? key,
    required this.heights,
    required this.width,
  }) : super(key: key);

  final double width;
  final double heights;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          return SizedBox(
            height: heights / 12,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Padding(padding: EdgeInsets.only(left: width / 15));
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: heights / 17,
                  width: heights / 17,
                  child: Column(
                    children: [
                      InkWell(
                          child: Container(
                            width: heights / 17,
                            height: heights / 17,
                            decoration: BoxDecoration(
                                color: secondaryWhite,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(appIcon),
                                    fit: BoxFit.contain)),
                          ),
                          onTap: () {}),
                      Padding(padding: EdgeInsets.only(top: 4)),
                    ],
                  ),
                );
              },
            ),
          );
        });
  }
}
// class itemGrid extends StatefulWidget {
//   itemGrid({
//     Key? key,
//     required this.heights,
//     required this.widths,
//   }) : super(key: key);

//   final double heights;
//   final double widths;
//   @override
//   State<itemGrid> createState() => _itemGridState();
// }

// class _itemGridState extends State<itemGrid> {
//   @override
//   Widget build(BuildContext context) {
//       return SizedBox(
//         height: widget.heights * 0.659,
//         width: double.infinity,
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             mainAxisSpacing: widget.heights * 0.025,
//             crossAxisSpacing: widget.widths * 0.1,
//             childAspectRatio: 1 / 1.3,
//             crossAxisCount: 2,
//           ),
//           itemCount: 3,
//           itemBuilder: (context, index) {
//             return Container(
//                 height: widget.heights * 0.1,
//                 width: widget.widths * 0.3,
//                 decoration: BoxDecoration(
//                     boxShadow: [
//                       BoxShadow(
//                         color: Color.fromARGB(80, 0, 0, 0),
//                         offset: Offset(
//                           0.20,
//                           0.0,
//                         ),
//                         blurRadius: 5.0,
//                         spreadRadius: 5.0,
//                       )
//                     ],
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10)),
//                 child: GridTile(
//                   header: Column(
//                     children: [
//                       SizedBox(
//                         height: widget.heights * 0.013,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             width: widget.widths * 0.01,
//                           ),
//                           SizedBox(
//                             width: widget.widths * 0.27,
//                           ),
//                           InkWell(
//                               onTap: () {
//                               },
//                               child: Icon(
//                                 Icons.add_shopping_cart_outlined,
//                                 color: Colors.black,
//                               )),
//                         ],
//                       ),
//                     ],
//                   ),
//                   footer: Row(
//                     children: [
//                       SizedBox(
//                         width: widget.widths * 0.02,
//                       ),
//                       SizedBox(
//                         height: widget.heights * 0.035,
//                         width: widget.widths * 0.4,
//                         child: ListView.builder(
//                             scrollDirection: Axis.horizontal,
//                             itemCount: 1,
//                             itemBuilder: (context, index2) {
//                               return Text('hlo',
//                                 style: TextStyle(fontWeight: FontWeight.w900),
//                               );
//                             }),
//                       )
//                     ],
//                   ),
//                   child: InkWell(
//                     onTap: () {},
//                     child: Container(
//                         margin: EdgeInsets.all(widget.heights * 0.01),
//                         child: Icon(Icons.shop)),
//                   ),
//                 ));
//           },
//         ),
//       );
//     }
// }
  
