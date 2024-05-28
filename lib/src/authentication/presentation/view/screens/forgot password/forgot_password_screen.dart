import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/authentication/presentation/view/widgets/create_an_account_widget.dart';
import 'package:untitled/src/authentication/presentation/view/widgets/forgot%20password/forgot_password_button.dart';
import 'package:untitled/src/authentication/presentation/view/screens/login/login_screen.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_fonts.dart';
import '../../widgets/forgot password/forgot_password_appbar.dart';
import '../../widgets/login_text_field.dart';
import 'otp_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const ForgotPasswordAppBar(
          screen: LoginScreen(),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/forgot-password-bro-1.png',
                width: 299.w,
                height: 274.h,
              ),
              SizedBox(
                height: 39.38.h,
              ),
              SizedBox(
                width: 159.w,
                height: 37.h,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'نسيت كلمة المرور',
                    textAlign: TextAlign.center,
                    style: safeGoogleFont(
                      'Cairo',
                      fontSize: 24.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'أدخل عنوان البريد الالكتروني',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Cairo',
                    fontSize: 13.sp,
                    color: AppColors.dimGray,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 12.0.h,
              ),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    LoginTextField(
                      controller: emailController,
                      lable: 'البريد الالكتروني',
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'example@gmail.com',
                    ),
                    SizedBox(
                      height: 44.0.h,
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OtpScreen()),
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
                        lable: 'ارسال رمز التحقق',
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 159.0.h,
              ),
              const CreateAnAccountWidget()
            ],
          ),
        ),
      ),
    );
  }
}
