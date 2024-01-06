import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_fonts.dart';

class AppButton extends StatefulWidget {
  final String lable;
  final Color textColor;
  final Color borderColor;
  final Color buttonColor;

  const AppButton({
    super.key,
    required this.lable,
    required this.textColor,
    required this.borderColor,
    required this.buttonColor,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 297.w,
      height: 56.h,
      child: Stack(
        children: [
          Positioned(
            left: 0.w,
            top: 0.h,
            child: Container(
              width: 297.w,
              height: 56.h,
              decoration: ShapeDecoration(
                color: widget.buttonColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 3, color: widget.borderColor),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            left: 49.w,
            top: 12.h,
            child: SizedBox(
              width: 200.w,
              height: 33.h,
              child: FittedBox(
                fit: BoxFit
                    .scaleDown, // Scale the text down to fit the available space
                child: Text(
                  widget.lable,
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Cairo',
                    color: widget.textColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
