import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../screens/Identification_screen.dart';
import '../utils/app_fonts.dart';

class CreateAnAccountWidget extends StatefulWidget {
  const CreateAnAccountWidget({super.key});

  @override
  State<CreateAnAccountWidget> createState() => _CreateAnAccountWidgetState();
}

class _CreateAnAccountWidgetState extends State<CreateAnAccountWidget> {
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
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const IdentificationScreen()),
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
                          color: const Color(0xFF4CAF50),
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
