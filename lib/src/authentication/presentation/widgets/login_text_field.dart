import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_fonts.dart';
import '../utils/email_validation_method.dart';

class LoginTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? lable;
  final TextInputType keyboardType;
  final bool? obscureText;
  final String hintText;
  final Transform? line;
  final Widget? suffixIcon;
  const LoginTextField(
      {super.key,
      required this.controller,
      this.lable,
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
    return Container(
      width: 297.w,
      height: 79.h,
      margin: EdgeInsets.only(bottom: 4.h),
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
              height: 52.h,
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
                    color: AppColors.darkGray.withOpacity(0.66),
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                validator: (value) {
                  if (widget.hintText == 'البريد الالكتروني') {
                    return _validateInput(value, 'email',
                        'البريد الإلكتروني غير صحيح، حاول مرة أخرى');
                  } else if (widget.hintText == 'كلمة المرور') {
                    return _validateInput(value, 'password',
                        'كلمة المرور قصيرة جدًا، حاول مرة أخرى');
                  }
                  return null;
                },
                onChanged: (value) {
                  if (showErrorMessage) {
                    _resetErrorState(value, widget.hintText);
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
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )),
          Positioned(
            left: 218.w,
            top: 0,
            child: SizedBox(
              width: 71.w,
              height: 21.h,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  widget.lable ?? '',
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

  String? _validateInput(String? value, String inputType, String errorMessage) {
    if (!formValidation(value ?? '', inputType)) {
      _updateErrorState(errorMessage);
      return '';
    }
    return null;
  }

  void _resetErrorState(String? value, String hintText) {
    if (!formValidation(
        value!, hintText == 'البريد الالكتروني' ? 'email' : 'password')) {
      _updateErrorState('');
    }
  }

  void _updateErrorState(String errorMessage) {
    bordercolor = errorMessage.isNotEmpty ? Colors.red : AppColors.darkGray;
    showErrorMessage = errorMessage.isNotEmpty;
    this.errorMessage = errorMessage;
  }
}
