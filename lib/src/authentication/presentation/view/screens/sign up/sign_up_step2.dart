import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/authentication/presentation/view/widgets/sign%20up/gender_text_field.dart';
import 'package:untitled/src/authentication/presentation/view/widgets/sign%20up/birthday_text_field.dart';
import 'package:untitled/src/authentication/presentation/view/widgets/sign%20up/sign_up_text_field.dart';
import 'package:untitled/src/core/utils/app_colors.dart';

class SignUpStep2 extends StatefulWidget {
  final int currentStep;
  final Function(int) goTo;
  final TextEditingController userNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController resetPasswordController;
  final TextEditingController birthdayController;
  final TextEditingController genderController;

  const SignUpStep2({
    Key? key,
    required this.currentStep,
    required this.goTo,
    required this.userNameController,
    required this.emailController,
    required this.passwordController,
    required this.resetPasswordController,
    required this.birthdayController,
    required this.genderController,
  }) : super(key: key);

  @override
  State<SignUpStep2> createState() => SignUpStep2State();
}

class SignUpStep2State extends State<SignUpStep2> {
  final _formKey = GlobalKey<FormState>();

  void signUpFormValidation(BuildContext context) {
    final form = _formKey.currentState;
    if (form != null && form.validate()) {
      widget.goTo(widget.currentStep + 1);
    } else {
      setState(() {});
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: AppColors.darkGray,
        content: Text(
          "يرجى التحقق من البيانات الخاصة بك",
          textAlign: TextAlign.end,
          style: TextStyle(color: Colors.white),
        ),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          SignUpTextField(
            controller: widget.userNameController,
            keyboardType: TextInputType.name,
            obscureText: false,
            hintText: 'اسم المستخدم',
          ),
          SizedBox(
            height: 15.02.h,
          ),
          SignUpTextField(
            controller: widget.emailController,
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            hintText: 'البريد الالكتروني',
          ),
          SizedBox(
            height: 15.02.h,
          ),
          SignUpTextField(
            controller: widget.passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            hintText: 'كلمة المرور',
          ),
          SizedBox(
            height: 15.02.h,
          ),
          SignUpTextField(
            controller: widget.resetPasswordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            passwordController: widget.passwordController,
            hintText: 'تاكيد كلمة المرور',
          ),
          SizedBox(
            height: 15.02.h,
          ),
          BirthdayTextField(controller: widget.birthdayController),
          SizedBox(
            height: 15.02.h,
          ),
          GenderTextField(
            controller: widget.genderController,
          ),
          SizedBox(
            height: 45.02.h,
          ),
        ],
      ),
    );
  }
}
