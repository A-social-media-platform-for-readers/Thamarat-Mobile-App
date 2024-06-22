import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class PlatformButton extends StatelessWidget {
  final String lable;
  final Color textColor;
  final String icon;
  final Color buttonColor;
  final void Function()? onPressed;

  const PlatformButton(
      {super.key,
      required this.lable,
      required this.icon,
      required this.buttonColor,
      required this.textColor,
      required this.onPressed, required String label});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: SizedBox(
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
                shadows: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    offset: const Offset(0, 4),
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
                  fit: BoxFit.scaleDown,
                  child: Text(
                    lable,
                    textAlign: TextAlign.center,
                    style: safeGoogleFont(
                      'Poppins',
                      color: textColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
