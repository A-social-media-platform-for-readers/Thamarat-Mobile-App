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
    return Container(
      width: 297.w,
      height: 56.h,
      decoration: ShapeDecoration(
        color: widget.buttonColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 3, color: widget.borderColor),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          widget.lable,
          textAlign: TextAlign.center,
          style: safeGoogleFont('Cairo',
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              height: 0,
              color: widget.textColor),
        ),
      ),
    );
  }
}
