import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlatformButton extends StatelessWidget {
  final String lable;
  final Color textColor;
  final String icon;
  final Color buttonColor;

  const PlatformButton(
      {super.key,
      required this.lable,
      required this.icon,
      required this.buttonColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 290.w,
      height: 52.h,
      child: Stack(
        children: [
          Container(
            width: 290.w,
            height: 52.h,
            decoration: ShapeDecoration(
              color: buttonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
            ),
          ),
          Positioned(
            left: 17.w,
            top: 10.h,
            child: SizedBox(
                width: 32.62.w, height: 32.62.h, child: Image.asset(icon)),
          ),
          Center(
            child: Container(
              width: 55.w,
              height: 21.h,
              margin: const EdgeInsetsDirectional.only(
                  start: 118, end: 117, top: 16, bottom: 15),
              child: FittedBox(
                fit: BoxFit
                    .scaleDown, // Scale the text down to fit the available space
                child: Text(
                  lable,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 15.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
