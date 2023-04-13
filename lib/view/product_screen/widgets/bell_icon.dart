import 'package:flutter/material.dart';

Widget noticationIcons({required Widget icon, required VoidCallback ontap}) {
  return InkWell(
    onTap: ontap,
    child: SizedBox(
      width: 40,
      height: 40,
      child: Stack(
        children: [
          Center(
            child: icon,
          ),
          Container(
            width: 30,
            height: 30,
            alignment: Alignment.topRight,
            margin: const EdgeInsets.only(top: 5),
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xffc32c37),
                  border: Border.all(color: Colors.white, width: 1)),
              child: const Padding(
                padding: EdgeInsets.all(0.0),
                child: Center(
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
