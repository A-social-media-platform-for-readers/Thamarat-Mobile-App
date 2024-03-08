import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import '../../../core/utils/app_fonts.dart';
import '../screens/sign up/sign_up_main_screen.dart';

class CreateAnAccountWidget extends StatelessWidget {
  const CreateAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 26.0.h),
      child: SizedBox(
        width: 155.w,
        height: 18.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpMainScreen()),
                  );
                },
                child: SizedBox(
                  width: 64.w,
                  height: 18.h,
                  child: Opacity(
                    opacity: 0.75,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        'إنشاء حساب',
                        style: safeGoogleFont(
                          'Cairo',
                          color: AppColors.shamrockGreen,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 89.w,
                height: 18.h,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'ليس لديك حساب؟',
                    style: safeGoogleFont(
                      'Cairo',
                      color: Colors.black,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
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
