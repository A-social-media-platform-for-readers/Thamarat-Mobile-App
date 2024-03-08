import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/authentication/presentation/common_widgets/create_an_account_widget.dart';
import 'package:untitled/src/authentication/presentation/common_widgets/forgot%20password/forgot_password_button.dart';
import 'package:untitled/src/authentication/presentation/common_widgets/forgot%20password/otp_text_field.dart';
import 'package:untitled/src/authentication/presentation/screens/forgot%20password/forgot_password_screen.dart';
import 'package:untitled/src/authentication/presentation/screens/forgot%20password/reset_password_screen.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../common_widgets/forgot password/forgot_password_appbar.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  final formKey = GlobalKey<FormState>();
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  final TextEditingController thirdController = TextEditingController();
  final TextEditingController lastController = TextEditingController();

  late Timer timer;
  int counter = 30;

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (counter > 0) {
          counter--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: const ForgotPasswordAppBar(
            screen: ForgotPasswordScreen(),
          ),
          centerTitle: true,
          title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'OTP التحقق من',
              textAlign: TextAlign.center,
              style: safeGoogleFont('Cairo',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          )),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 81.h,
              ),
              SizedBox(
                width: 98.w,
                height: 21.0.h,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'OTP ادخل',
                    style: safeGoogleFont('Cairo',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              SizedBox(
                width: 285.0.w,
                height: 19.0.h,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'تم إرسال رمز مكون من 4 أرقام إلى بريدك الإلكتروني',
                    style: safeGoogleFont(
                      'Cairo',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff575757),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 44.0.h,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(
                      width: 269.09.w,
                      height: 60.9.h,
                      child: Stack(
                        children: [
                          Row(children: [
                            OtpTextField(
                              controller: firstController,
                              first: true,
                              last: false,
                            ),
                            OtpTextField(
                              controller: secondController,
                              first: false,
                              last: false,
                            ),
                            OtpTextField(
                              controller: thirdController,
                              first: false,
                              last: false,
                            ),
                            OtpTextField(
                              controller: lastController,
                              first: false,
                              last: true,
                            ),
                          ]),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.1.h,
                    ),
                    SizedBox(
                      width: 273.w,
                      height: 20.h,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'ثانية  $counter',
                                style: safeGoogleFont(
                                  'Cairo',
                                  color: AppColors.primary,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'خلال OTP يجب أن تتلقى كلمة المرور ',
                                style: safeGoogleFont(
                                  'Cairo',
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35.0.h,
                    ),
                    MaterialButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          setState(() {});
                          final scaffoldContext = ScaffoldMessenger.of(context);
                          scaffoldContext.hideCurrentSnackBar();
                          scaffoldContext.showSnackBar(
                            const SnackBar(
                              backgroundColor: AppColors.darkGray,
                              content: Text(
                                "..... انتظر للتحميل",
                                textAlign: TextAlign.end,
                                style: TextStyle(color: Colors.white),
                              ),
                              duration: Duration(seconds: 5),
                            ),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ResetPsswordScreen()),
                          );
                        } else {
                          setState(() {});
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            backgroundColor: AppColors.darkGray,
                            content: Text(
                              "يرجى التحقق من البيانات الخاصة بك",
                              textAlign: TextAlign.end,
                              style: TextStyle(color: Colors.white),
                            ),
                          ));
                        }
                      },
                      child: const ForgotPasswordButton(
                        lable: 'تحقق',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 294.h,
              ),
              const CreateAnAccountWidget(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
