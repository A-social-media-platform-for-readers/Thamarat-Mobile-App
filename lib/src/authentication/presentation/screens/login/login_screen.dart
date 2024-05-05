import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/custom_bottomn_nav_bar.dart';
import 'package:untitled/src/authentication/presentation/widgets/back_and_next_buttons.dart';
import 'package:untitled/src/authentication/presentation/widgets/platform_button.dart';
import 'package:untitled/src/authentication/presentation/widgets/welcome_text.dart';
import 'package:untitled/src/authentication/presentation/screens/forgot%20password/forgot_password_screen.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../widgets/welcome/app_title.dart';
import '../../widgets/create_an_account_widget.dart';
import '../../widgets/login_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 52.h,
                ),
                const AppTitle(
                  textColor: AppColors.primary,
                ),
                SizedBox(
                  height: 21.h,
                ),
                const WelcomeText(),
                SizedBox(
                  height: 26.h,
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
                      LoginTextField(
                        controller: passwordController,
                        lable: 'كلمة المرور',
                        keyboardType: TextInputType.visiblePassword,
                        hintText: 'password',
                        obscureText: isPasswordHidden,
                        line: Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(1.57),
                          child: Container(
                            width: 56.w,
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: AppColors.darkGray,
                                ),
                              ),
                            ),
                          ),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isPasswordHidden
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            isPasswordHidden = !isPasswordHidden;
                            setState(() {});
                          },
                        ),
                      ),
                      SizedBox(
                          width: 286.95.w,
                          height: 22.h,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  width: 61.95.w,
                                  height: double.infinity.h,
                                  child: MaterialButton(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/ri-checkbox-circle-line-bE4.png',
                                          width: 21.95.w,
                                          height: 21.95.h,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        SizedBox(
                                          width: 35.w,
                                          height: 22.h,
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              'ذكرني',
                                              style: safeGoogleFont(
                                                'Cairo',
                                                color: AppColors.facebookBlue,
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w500,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ForgotPasswordScreen()),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: 119.w,
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: 106.w,
                                  height: 18.h,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      'هل نسيت كلمة المرور ؟',
                                      style: safeGoogleFont(
                                        'Cairo',
                                        color: AppColors.primary,
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w500,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 18.h,
                      ),
                      SizedBox(
                        width: 295.w,
                        height: 56.h,
                        child: Row(
                          children: [
                            Expanded(
                                child: BackNextButtons(
                              lable: 'رجوع',
                              buttonColor: Colors.white,
                              textColor: AppColors.primary,
                              onTap: () {
                                Navigator.pop(context);
                              },
                            )),
                            SizedBox(
                              width: 15.w,
                            ),
                            Expanded(
                              child: BackNextButtons(
                                lable: 'دخول',
                                textColor: Colors.white,
                                buttonColor: AppColors.primary,
                                onTap: loginFormValidation,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 288.w,
                  height: 42.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 288.w,
                        height: 1.h,
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(
                                color: AppColors.primary, width: 1.0),
                            bottom: BorderSide.none,
                            right: BorderSide.none,
                            left: BorderSide.none,
                          ),
                        ),
                      ),
                      Container(
                        height: 42.h,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(color: Colors.white),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'او من خلال',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont(
                              'Cairo',
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                PlatformButton(
                  lable: 'Google',
                  icon: 'assets/group-272.png',
                  buttonColor: Colors.white,
                  textColor: Colors.black,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 11.h,
                ),
                PlatformButton(
                  lable: 'Facebook',
                  icon: 'assets/vector.png',
                  buttonColor: AppColors.facebookBlue,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 36.h,
                ),
                const CreateAnAccountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void loginFormValidation() {
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
        MaterialPageRoute(builder: (context) => const CustomBottomNavBar()),
      );
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
}
