import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_fonts.dart';

class BackNextButtons extends StatelessWidget {
  final String label;
  final Color textColor;
  final Color buttonColor;
  final void Function()? onTap;

  const BackNextButtons({
    super.key,
    required this.label,
    required this.textColor,
    required this.buttonColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 140.w,
        height: 56.h,
        decoration: ShapeDecoration(
          color: buttonColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: buttonColor),
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: [
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
              blurRadius: 4,
              offset: const Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child: SizedBox(
            width: 45.0.w,
            height: 23.0.h,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: safeGoogleFont(
                  'Cairo',
                  color: textColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
