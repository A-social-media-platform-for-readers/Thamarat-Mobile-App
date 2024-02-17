import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_fonts.dart';

class ForgotPasswordButton extends StatefulWidget {
  final String lable;

  const ForgotPasswordButton({
    super.key,
    required this.lable,
  });

  @override
  State<ForgotPasswordButton> createState() => _ForgotPasswordButtonState();
}

class _ForgotPasswordButtonState extends State<ForgotPasswordButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 263.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: AppColors.primary),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0xcc000000),
            offset: Offset(0, 0),
            blurRadius: 2,
          ),
        ],
      ),
      child: SizedBox(
        width: 149.w,
        height: 20.54.h,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            widget.lable,
            textAlign: TextAlign.center,
            style: safeGoogleFont(
              'Cairo',
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.primary,
            ),
          ),
        ),
      ),
    );
  }
}
