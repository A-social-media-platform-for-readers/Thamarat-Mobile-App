import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/authentication/presentation/widgets/sign%20up/sign_up_text_field.dart';

class SignUpStep2 extends StatelessWidget {
  const SignUpStep2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        SignUpTextField(
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          obscureText: false,
          hintText: 'اسم المستخدم',
        ),
        SizedBox(
          height: 15.02.h,
        ),
        SignUpTextField(
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          obscureText: false,
          hintText: 'البريد الالكتروني',
        ),
        SizedBox(
          height: 15.02.h,
        ),
        SignUpTextField(
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          obscureText: false,
          hintText: 'كلمة المرور',
        ),
        SizedBox(
          height: 15.02.h,
        ),
        SignUpTextField(
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          obscureText: false,
          hintText: 'تاكيد كلمة المرور',
        ),
        SizedBox(
          height: 165.h,
        ),
      ],
    );
  }
}
