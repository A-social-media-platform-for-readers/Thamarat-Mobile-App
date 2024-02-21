import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/utils/email_validation_method.dart';

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
  Color bordercolor = AppColors.darkGray;
  bool showErrorMessage = false;
  String errorMessage = '';
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
                          side: BorderSide(width: 1, color: bordercolor),
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
            left: 14.w,
            top: 32.h,
            child: SizedBox(
              width: 220.w,
              height: 56.h,
              child: TextFormField(
                keyboardType: widget.keyboardType,
                style: safeGoogleFont(
                  'Cairo',
                  color: AppColors.darkGray,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
                obscureText: widget.obscureText ?? false,
                controller: widget.controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: widget.hintText,
                  hintStyle: safeGoogleFont(
                    'Cairo',
                    color: AppColors.darkGray,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                validator: (value) {
                  if (widget.lable == 'البريد الالكتروني') {
                    if (!isEmail(value ?? "")) {
                      bordercolor = Colors.red;
                      showErrorMessage = true;
                      errorMessage =
                          'البريد الإلكتروني  غير صحيح، حاول مرة أخرى';
                      return '';
                    }
                    return null;
                  } else if (widget.lable == 'كلمة المرور') {
                    if (value!.length < 6) {
                      bordercolor = Colors.red;
                      showErrorMessage = true;
                      errorMessage = 'كلمة المرور قصيرة جدًا، حاول مرة أخرى';
                      return '';
                    }
                    return null;
                  }
                  return null;
                },
                onChanged: (value) {
                  if (showErrorMessage) {
                    if (widget.lable == 'البريد الالكتروني') {
                      if (isEmail(value)) {
                        bordercolor = AppColors.darkGray;
                        showErrorMessage = false;
                      }
                    } else if (widget.lable == 'كلمة المرور') {
                      if (value.length >= 6) {
                        bordercolor = AppColors.darkGray;
                        showErrorMessage = false;
                      }
                    }
                  }
                },
              ),
            ),
          ),
          Positioned(
              left: 14.w,
              top: 50.h,
              child: Visibility(
                visible: showErrorMessage,
                child: SizedBox(
                  width: 220.w,
                  height: 30.h,
                  child: Text(
                    errorMessage,
                    textAlign: TextAlign.center,
                    style: safeGoogleFont(
                      'Cairo',
                      color: Colors.red,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )),
          Positioned(
            left: 218.w,
            top: 0.h,
            child: SizedBox(
              width: 71.w,
              height: 21.h,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  widget.lable,
                  textAlign: TextAlign.right,
                  style: safeGoogleFont(
                    'Cairo',
                    color: AppColors.darkGray,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 253.0.w,
            top: 30.0.h,
            child: SizedBox(
              width: 30.0.w,
              height: 25.0.h,
              child: widget.suffixIcon,
            ),
          ),
        ],
      ),
    );
  }
}
