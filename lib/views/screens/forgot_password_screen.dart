import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/views/common_widgets/create_an_account_widget.dart';
import 'package:untitled/views/screens/login_screen.dart';
import 'package:untitled/views/utils/app_colors.dart';
import 'package:untitled/views/utils/app_fonts.dart';
import '../common_widgets/forgot_password_appbar.dart';
import '../common_widgets/login_text_field.dart';
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
        leadingWidth: 31.89.w,
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
              FittedBox(
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
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'أدخل عنوان البريد الالكتروني',
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Cairo',
                    fontSize: 13.sp,
                    color: const Color(0xff626262),
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
                              backgroundColor: AppColors.color3,
                              content: Text(
                                "Loading ...",
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
                            backgroundColor: AppColors.color3,
                            content: Text(
                              "يرجى التحقق من البيانات الخاصة بك",
                              style: TextStyle(color: Colors.white),
                            ),
                          ));
                        }
                      },
                      child: Container(
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
                              'ارسال رمز التحقق',
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
                      ),
                    ),
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
