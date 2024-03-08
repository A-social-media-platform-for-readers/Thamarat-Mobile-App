import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/authentication/presentation/common_widgets/welcome_text.dart';
import 'package:untitled/src/authentication/presentation/screens/login/login_screen.dart';
import 'package:untitled/src/authentication/presentation/screens/sign%20up/sign_up_main_screen.dart';
import '../../../../core/utils/app_colors.dart';
import '../../common_widgets/welcome/welcome_screen_button.dart';
import '../../common_widgets/welcome/app_title.dart';

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
                    buttonColor: AppColors.primary,
                    screen: LoginScreen(),
                  ),
                  SizedBox(
                    height: 17.h,
                  ),
                  const WelcomeScreenButton(
                    lable: 'إنشاء حساب',
                    textColor: AppColors.springGreen,
                    buttonColor: Colors.white,
                    screen: SignUpMainScreen(),
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
