import 'package:flutter/material.dart';
import 'package:untitled/views/common_widgets/welcome_text.dart';
import 'package:untitled/views/screens/login.dart';
import 'package:untitled/views/utils/app_colors.dart';
import '../common_widgets/app_button.dart';
import '../common_widgets/app_title.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 53,
                  ),
                  const AppTitle(
                    textColor: Colors.white,
                  ),
                  Image.asset(
                    'assets/reading-list-bro-1.png',
                    width: 460,
                    height: 460,
                  ),
                  const WelcomeText(),
                  const SizedBox(
                    height: 29,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const AppButton(
                      lable: 'لدي حساب بالفعل',
                      textColor: Colors.white,
                      borderColor: Colors.white,
                      buttonColor: AppColors.primary,
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: const AppButton(
                      lable: 'إنشاء حساب',
                      textColor: AppColors.color2,
                      borderColor: Colors.white,
                      buttonColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 49,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
