import 'package:flutter/material.dart';
import 'package:untitled/views/common_widgets/welcome_text.dart';
import 'package:untitled/views/utils/app_colors.dart';
import 'package:untitled/views/utils/app_fonts.dart';

import '../common_widgets/app_title.dart';

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
                      SizedBox(
                        width: 297,
                        height: 79,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 79,
                              child: Text(
                                'البريد الالكتروني',
                                textAlign: TextAlign.right,
                                style: safeGoogleFont(
                                  'Cairo',
                                  color: AppColors.color3,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              width: 297,
                              height: 56,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: AppColors.color3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: emailController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding:
                                      const EdgeInsetsDirectional.only(
                                    top: 18,
                                    bottom: 17,
                                    start: 14,
                                  ),
                                  hintText: "exampLe@gmail.com",
                                  hintStyle: safeGoogleFont(
                                    'Cairo',
                                    color: AppColors.color3,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      SizedBox(
                        width: 297,
                        height: 79,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              width: 1,
                              height: 56,
                              margin: const EdgeInsetsDirectional.only(
                                  start: 249, end: 48),
                              decoration: const BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                      color: AppColors.color3, width: 1.0),
                                  top: BorderSide.none,
                                  right: BorderSide.none,
                                  bottom: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 79,
                              child: Text(
                                'كلمة المرور ',
                                textAlign: TextAlign.right,
                                style: safeGoogleFont(
                                  'Cairo',
                                  color: AppColors.color3,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              width: 297,
                              height: 56,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: AppColors.color3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: TextFormField(
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: isPasswordHidden,
                                controller: passwordController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding:
                                      const EdgeInsetsDirectional.only(
                                    top: 18,
                                    bottom: 17,
                                    start: 14,
                                  ),
                                  hintText: "password",
                                  hintStyle: safeGoogleFont(
                                    'Cairo',
                                    color: AppColors.color3,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.symmetric(
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
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
