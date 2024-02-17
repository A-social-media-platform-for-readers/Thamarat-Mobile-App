import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/app_fonts.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 92.0.w,
          height: 34.0.h,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'إنشاء حساب',
              style: safeGoogleFont('Cairo',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        SizedBox(
          width: 216.0.w,
          height: 28.0.h,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'اختر هويتك لتجعلنا نبسط لك الدخول',
              style: safeGoogleFont('Cairo',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
