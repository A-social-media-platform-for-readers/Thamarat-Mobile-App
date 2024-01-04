import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors.dart';
import '../utils/app_fonts.dart';

class LoginTextField extends StatefulWidget {
  final TextEditingController controller;
  final String lable;
  final TextInputType keyboardType;
  final bool? obscureText;
  final String hintText;
  final Container? line;
  final Widget? suffixIcon;
  const LoginTextField(
      {super.key,
      required this.controller,
      required this.lable,
      required this.keyboardType,
      this.obscureText,
      required this.hintText,
      this.line,
      this.suffixIcon});

  @override
  State<LoginTextField> createState() => _LoginTextFieldState();
}

class _LoginTextFieldState extends State<LoginTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 297.w,
      height: 79.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          widget.line ?? const SizedBox(),
          SizedBox(
            width: double.infinity.w,
            height: 79.h,
            child: Text(
              widget.lable,
              textAlign: TextAlign.right,
              style: safeGoogleFont(
                'Cairo',
                color: AppColors.color3,
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            width: 297.w,
            height: 56.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: AppColors.color3),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: TextFormField(
              keyboardType: widget.keyboardType,
              obscureText: widget.obscureText ?? false,
              controller: widget.controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsetsDirectional.only(
                  top: 18,
                  bottom: 17,
                  start: 14,
                ),
                hintText: widget.hintText,
                hintStyle: safeGoogleFont(
                  'Cairo',
                  color: AppColors.color3,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
                suffixIcon: widget.suffixIcon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
