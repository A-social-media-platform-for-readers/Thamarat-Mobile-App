import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/views/common_widgets/back_and_next_buttons.dart';
import 'package:untitled/views/common_widgets/platform_button.dart';
import 'package:untitled/views/common_widgets/welcome_text.dart';
import 'package:untitled/views/screens/forgot_password_screen.dart';
import 'package:untitled/views/screens/home_screen.dart';
import 'package:untitled/views/screens/welcome_screen.dart';
import 'package:untitled/views/utils/app_colors.dart';
import 'package:untitled/views/utils/app_fonts.dart';
import '../common_widgets/app_title.dart';
import '../common_widgets/create_an_account_widget.dart';
import '../common_widgets/login_text_field.dart';

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
                      SizedBox(
                        height: 4.h,
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
                                  color: Color(0xFF8B8B8B),
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
                        height: 4.h,
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
                                                color: const Color(0xFF1877F2),
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
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const WelcomeScreen()),
                                    );
                                  },
                                  child: const BackNextButtons(
                                    lable: 'رجوع',
                                    buttonColor: Colors.white,
                                    textColor: AppColors.primary,
                                  )),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    if (formKey.currentState!.validate()) {
                                      setState(() {});
                                      final scaffoldContext =
                                          ScaffoldMessenger.of(context);
                                      scaffoldContext.hideCurrentSnackBar();
                                      scaffoldContext.showSnackBar(
                                        const SnackBar(
                                          backgroundColor: AppColors.color3,
                                          content: Text(
                                            "Loading ...",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          duration: Duration(seconds: 5),
                                        ),
                                      );
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen()),
                                      );
                                    } else {
                                      setState(() {});
                                      ScaffoldMessenger.of(context)
                                          .hideCurrentSnackBar();
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
                                  child: const BackNextButtons(
                                    lable: 'دخول',
                                    textColor: Colors.white,
                                    buttonColor: AppColors.primary,
                                  )),
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
                const PlatformButton(
                    lable: 'Google',
                    icon: 'assets/group-272.png',
                    buttonColor: Colors.white,
                    textColor: Colors.black),
                SizedBox(
                  height: 11.h,
                ),
                const PlatformButton(
                    lable: 'Facebook',
                    icon: 'assets/vector.png',
                    buttonColor: Color(0xFF1877F2),
                    textColor: Colors.white),
                SizedBox(
                  height: 36.h,
                ),
                const CreateAnAccountWidget(),
                SizedBox(
                  height: 26.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
