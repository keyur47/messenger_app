import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget button(
    {required String text,
    required VoidCallback onTap,
    // IconData? iconData,
    required Color textColor,
    required Color boxColor,
    Color? ImageColor,
    double? scale,
    required double left,
    required double right,
    required double top,
    required double bottom,
     double? width,
    required String image,
    required Color iconColor}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
          color: boxColor, borderRadius: BorderRadius.circular(10.w)),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
              left: left, right: right, top: top, bottom: bottom),
          child: Row(
            children: [
              Image.asset(
                image,
                color: ImageColor,
                scale: scale,
              ),
              SizedBox(
                width: width,
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: textColor),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
