// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:e_store/controller/signin_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:provider/provider.dart';


// class MobileOtpField extends StatelessWidget {
//   MobileOtpField({
//     Key? key,
//     required this.height,
//     required this.width,
//   }) : super(key: key);

//   final double height;
//   final double width;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height / 13,
//       width: width * 0.9,

//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           border: Border.all(color: mainBlack)),
//       // color: Colors.blue,
//       child: Row(
//         children: [
//           Padding(
//             padding: EdgeInsets.only(left: width / 10),
//           ),
//           SizedBox(
//             width: width / 10,
//             child: Text('+91'),
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: width / 30),
//           ),
//           Text(
//             '|',
//             style: TextStyle(
//                 fontSize: height / 25,
//                 color: mainBlack,
//                 fontWeight: FontWeight.w300),
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: width / 30),
//           ),
//           Expanded(
//             child: TextField(
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(border: InputBorder.none),
//               cursorColor: mainBlack,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: width / 30),
//           ),
//         ],
//       ),
//     );
//   }
// }
class MobileOtpField extends StatelessWidget {
  double height;
  double width;

  MobileOtpField({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SignInController>(builder: (context, signinProvider, _) {
      return SizedBox(
        height: height / 13,
        width: width * 0.9,
        child: IntlPhoneField(
          decoration: const InputDecoration(
            labelText: 'Phone Number',
            border: OutlineInputBorder(
              borderSide: BorderSide(),
            ),
          ),
          initialCountryCode: 'IN',
          onChanged: (phone) {
            signinProvider.phoneNumberUpdate(phoneNum: phone.completeNumber);
          },
          onCountryChanged: (country) {
            print(country);
          },
        ),
      );
    });
  }
}
