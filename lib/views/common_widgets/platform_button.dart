import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlatformButton extends StatefulWidget {
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
  State<PlatformButton> createState() => _PlatformButtonState();
}

class _PlatformButtonState extends State<PlatformButton> {
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
              color: widget.buttonColor,
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
          Container(
              width: 32.62.w,
              height: 32.62.h,
              margin: const EdgeInsetsDirectional.only(
                  start: 17, end: 240.38, top: 10, bottom: 9.38),
              child: Image.asset(widget.icon)),
          Container(
            width: 55.w,
            height: 21.h,
            margin: const EdgeInsetsDirectional.only(
                start: 118, end: 117, top: 16, bottom: 15),
            child: Text(
              widget.lable,
              style: TextStyle(
                color: widget.textColor,
                fontSize: 15.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
