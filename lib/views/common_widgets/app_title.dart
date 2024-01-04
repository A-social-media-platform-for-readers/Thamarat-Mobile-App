import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_fonts.dart';

class AppTitle extends StatelessWidget {
  final Color textColor;
  const AppTitle({super.key, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Thamarat ثمرات',
      textAlign: TextAlign.center,
      style: safeGoogleFont(
        'Changa',
        fontSize: 40.sp,
        fontWeight: FontWeight.w400,
        height: 0,
        color: textColor,
      ),
    );
  }
}
