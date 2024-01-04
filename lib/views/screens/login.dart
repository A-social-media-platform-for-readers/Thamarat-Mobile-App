import 'package:flutter/material.dart';
import 'package:untitled/views/common_widgets/back_and_next_buttons.dart';
import 'package:untitled/views/common_widgets/platform_button.dart';
import 'package:untitled/views/common_widgets/welcome_text.dart';
import 'package:untitled/views/screens/forgot_password_screen.dart';
import 'package:untitled/views/screens/home_screen.dart';
import 'package:untitled/views/screens/start_screen.dart';
import 'package:untitled/views/utils/app_colors.dart';
import 'package:untitled/views/utils/app_fonts.dart';
import '../common_widgets/app_title.dart';
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
                const SizedBox(
                  height: 53,
                ),
                const AppTitle(
                  textColor: AppColors.primary,
                ),
                const SizedBox(
                  height: 21,
                ),
                const WelcomeText(),
                const SizedBox(
                  height: 26,
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
                      const SizedBox(
                        height: 4,
                      ),
                      LoginTextField(
                        controller: emailController,
                        lable: 'كلمة المرور',
                        keyboardType: TextInputType.visiblePassword,
                        hintText: 'password',
                        obscureText: isPasswordHidden,
                        suffixIcon: IconButton(
                          icon: Padding(
                            padding: const EdgeInsetsDirectional.symmetric(
                                horizontal: 3),
                            child: Icon(
                              isPasswordHidden
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          onPressed: () {
                            isPasswordHidden = !isPasswordHidden;
                            setState(() {});
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      SizedBox(
                          width: 286.95,
                          height: 22,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: SizedBox(
                                  width: 61.95,
                                  height: 22,
                                  child: MaterialButton(
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/ri-checkbox-circle-line-bE4.png',
                                          width: 21.95,
                                          height: 21.95,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        SizedBox(
                                          width: 35,
                                          height: 22,
                                          child: Text(
                                            'ذكرني',
                                            style: safeGoogleFont(
                                              'Cairo',
                                              color: const Color(0xFF1877F2),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                              height: 0,
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
                              const Expanded(
                                child: SizedBox(
                                  width: 119,
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: SizedBox(
                                  width: 106,
                                  height: 18,
                                  child: Text(
                                    'هل نسيت كلمة المرور ؟',
                                    style: safeGoogleFont(
                                      'Cairo',
                                      color: AppColors.primary,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 18,
                      ),
                      SizedBox(
                        width: 295,
                        height: 56,
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const StartScreen()),
                                    );
                                  },
                                  child: const BackNextButtons(
                                    lable: 'رجوع',
                                    buttonColor: Colors.white,
                                    textColor: AppColors.primary,
                                  )),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomeScreen()),
                                    );
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
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 288,
                  height: 42,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 288,
                        height: 1,
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
                        height: 42,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Text(
                          'او من خلال',
                          textAlign: TextAlign.center,
                          style: safeGoogleFont(
                            'Cairo',
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const PlatformButton(
                    lable: 'Google',
                    icon: 'assets/group-272.png',
                    buttonColor: Colors.white,
                    textColor: Colors.black),
                const SizedBox(
                  height: 11,
                ),
                const PlatformButton(
                    lable: 'Facebook',
                    icon: 'assets/vector.png',
                    buttonColor: Color(0xFF1877F2),
                    textColor: Colors.white),
                const SizedBox(
                  height: 36,
                ),
                SizedBox(
                  width: 155,
                  height: 18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 64,
                          height: 18,
                          child: Opacity(
                            opacity: 0.75,
                            child: Text(
                              'إنشاء حساب',
                              style: safeGoogleFont(
                                'Cairo',
                                color: const Color(0xFF4CAF50),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 89,
                          height: 18,
                          child: Text(
                            'ليس لديك حساب؟',
                            style: safeGoogleFont(
                              'Cairo',
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 26,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
