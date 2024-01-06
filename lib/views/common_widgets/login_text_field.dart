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
  final Transform? line;
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
        children: [
          Positioned(
            left: 0.w,
            top: 23.h,
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
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: AppColors.color3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 249.w,
                    top: 0.h,
                    child: widget.line ?? const SizedBox(),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 14,
            top: 41,
            child: SizedBox(
              width: 98.w,
              height: 21.h,
              child: TextFormField(
                keyboardType: widget.keyboardType,
                obscureText: widget.obscureText ?? false,
                controller: widget.controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.hintText,
                  hintStyle: safeGoogleFont(
                    'Cairo',
                    color: AppColors.color3,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 218.w,
            top: 0.h,
            child: SizedBox(
              width: 71.w,
              height: 21.h,
              child: FittedBox(
                fit: BoxFit
                    .scaleDown, // Scale the text down to fit the available space
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
            ),
          ),
          Positioned(
            left: 258.w,
            top: 39.h,
            child: SizedBox(
              width: 30.w,
              height: 25.h,
              child: widget.suffixIcon,
            ),
          ),
        ],
      ),
    );
  }
}
