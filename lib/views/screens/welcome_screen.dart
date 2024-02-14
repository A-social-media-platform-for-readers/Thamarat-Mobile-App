import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/views/common_widgets/welcome_text.dart';
import 'package:untitled/views/screens/login_screen.dart';
import 'package:untitled/views/screens/identification_screen.dart';
import 'package:untitled/views/utils/app_colors.dart';
import '../common_widgets/welcome_screen_button.dart';
import '../common_widgets/app_title.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 26.08.h,
                  ),
                  const AppTitle(
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    height: 15.59.h,
                  ),
                  Image.asset(
                    'assets/reading-list-bro-1.png',
                    width: 360.w,
                    height: 338.54.h,
                  ),
                  SizedBox(
                    height: 37.42.h,
                  ),
                  const WelcomeText(),
                  SizedBox(
                    height: 29.h,
                  ),
                  const WelcomeScreenButton(
                    lable: 'لدي حساب بالفعل',
                    textColor: Colors.white,
                    borderColor: Colors.white,
                    buttonColor: AppColors.primary,
                    screen: LoginScreen(),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  const WelcomeScreenButton(
                    lable: 'إنشاء حساب',
                    textColor: AppColors.color2,
                    borderColor: Colors.white,
                    buttonColor: Colors.white,
                    screen: IdentificationScreen(),
                  ),
                  SizedBox(
                    height: 49.h,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
