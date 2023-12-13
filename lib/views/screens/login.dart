import 'package:flutter/material.dart';
import 'package:untitled/views/common_widgets/back_and_next_buttons.dart';
import 'package:untitled/views/common_widgets/welcome_text.dart';
import 'package:untitled/views/screens/forgot_password_screen.dart';
import 'package:untitled/views/screens/home_screen.dart';
import 'package:untitled/views/screens/start_screen.dart';
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
                                flex: 2,
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
                              decoration: BoxDecoration(color: Colors.white),
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
