import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/app_fonts.dart';

class BackNextButtons extends StatelessWidget {
  final String lable;
  final Color textColor;
  final Color buttonColor;

  const BackNextButtons({
    super.key,
    required this.lable,
    required this.textColor,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140.w,
        height: 56.h,
        decoration: ShapeDecoration(
          color: buttonColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: buttonColor),
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0xCC000000),
              blurRadius: 4,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
            child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            lable,
            textAlign: TextAlign.center,
            style: safeGoogleFont(
              'Cairo',
              color: textColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        )));
  }
}
