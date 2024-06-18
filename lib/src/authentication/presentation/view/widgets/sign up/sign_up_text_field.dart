import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/authentication/presentation/view/widgets/border.dart';
import 'package:untitled/src/core/const.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_fonts.dart';
import '../../utils/email_validation_method.dart';

class SignUpTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool? obscureText;
  final String hintText;
  final TextEditingController? passwordController;

  const SignUpTextField({
    super.key,
    required this.controller,
    required this.keyboardType,
    this.obscureText,
    this.passwordController,
    required this.hintText,
  });

  @override
  State<SignUpTextField> createState() => _SignUpTextFieldState();
}

class _SignUpTextFieldState extends State<SignUpTextField> {
  Color bordercolor = AppColors.darkGray;
  bool showErrorMessage = false;
  String errorMessage = '';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: signUpFeildWidth.w,
        height: signUpFeildHeight.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          Positioned(
            left: 0.w,
            top: 0.h,
            child: TextFeildShape(bordercolor:bordercolor, height: signUpFeildHeight,)
          ),
          Positioned(
            left: 60.w,
            top: 0.h,
            child: SizedBox(
              width: 220.w,
              height: signUpFeildHeight.h,
              child: TextFormField(
                  keyboardType: widget.keyboardType,
                  style: safeGoogleFont(
                    'Cairo',
                    color: AppColors.darkGray,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.end,
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
                    ),
                  ),
                  validator: (value) {
                    if (widget.hintText == 'البريد الالكتروني') {
                      if (!isEmail(value ?? "")) {
                        bordercolor = Colors.red;
                        showErrorMessage = true;
                        errorMessage =
                            'البريد الإلكتروني  غير صحيح، حاول مرة أخرى';
                        return '';
                      }
                      return null;
                    } else if (widget.hintText == 'كلمة المرور') {
                      if (value!.length < 6) {
                        bordercolor = Colors.red;
                        showErrorMessage = true;
                        errorMessage = 'كلمة المرور قصيرة جدًا، حاول مرة أخرى';
                        return '';
                      }
                      return null;
                    } else if (widget.hintText == 'اسم المستخدم') {
                      if (value!.isEmpty) {
                        bordercolor = Colors.red;
                        showErrorMessage = true;
                        errorMessage = 'لا يوجد اسم مستخدم، حاول مرة أخرى';
                        return '';
                      }

                      return null;
                    } else if (widget.hintText == 'تاكيد كلمة المرور') {
                      if (value!.isEmpty ||
                          value != widget.passwordController?.text) {
                        bordercolor = Colors.red;
                        showErrorMessage = true;
                        errorMessage = 'كلمة المرور غير مطابقة.';
                        return '';
                      }
                    }

                    return null;
                  },
                  onChanged: (value) {
                    if (showErrorMessage) {
                      if (widget.hintText == 'البريد الالكتروني') {
                        if (isEmail(value)) {
                          bordercolor = AppColors.darkGray;
                          showErrorMessage = false;
                        }
                      } else if (widget.hintText == 'كلمة المرور') {
                        if (value.length >= 6) {
                          bordercolor = AppColors.darkGray;
                          showErrorMessage = false;
                        }
                      } else if (widget.hintText == 'اسم المستخدم') {
                        if (value.isEmpty) {
                          bordercolor = AppColors.darkGray;
                          showErrorMessage = false;
                        }
                      }
                    } else if (widget.hintText == 'اسم المستخدم') {
                      if (value.isEmpty) {
                        bordercolor = Colors.red;
                        showErrorMessage = true;
                        errorMessage = 'لا يوجد اسم مستخدم، حاول مرة أخرى';
                        return;
                      }
                    } else if (widget.hintText == 'تاكيد كلمة المرور') {
                      if (value.isEmpty ||
                          value != widget.passwordController?.text) {
                        bordercolor = Colors.red;
                        showErrorMessage = true;
                        errorMessage = 'كلمة المرور غير مطابقة.';
                        return;
                      }
                    }
                  }),
            ),
          ),
          Positioned(
            left: 14.w,
            top: 29.h,
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
            ),
          ),
        ]));
  }
}
