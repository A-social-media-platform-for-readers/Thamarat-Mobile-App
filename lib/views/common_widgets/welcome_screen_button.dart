import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_fonts.dart';

class WelcomeScreenButton extends StatelessWidget {
  final String lable;
  final Color textColor;
  final Color borderColor;
  final Color buttonColor;
  final Widget screen;

  const WelcomeScreenButton(
      {super.key,
      required this.lable,
      required this.textColor,
      required this.borderColor,
      required this.buttonColor,
      required this.screen});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: SizedBox(
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
                  color: buttonColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 3, color: borderColor),
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
                  fit: BoxFit.scaleDown,
                  child: Text(
                    lable,
                    textAlign: TextAlign.center,
                    style: safeGoogleFont(
                      'Cairo',
                      color: textColor,
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
      ),
    );
  }
}
