import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/authentication/presentation/widgets/sign%20up/sign_up_stepper.dart';
import 'package:untitled/src/authentication/presentation/widgets/sign%20up/sign_up_text.dart';
import 'package:untitled/src/authentication/presentation/screens/sign%20up/sign_up_step1.dart';
import 'package:untitled/src/authentication/presentation/screens/sign%20up/sign_up_step2.dart';
import 'package:untitled/src/authentication/presentation/screens/sign%20up/sign_up_step3.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import '../../widgets/back_and_next_buttons.dart';
import '../../widgets/welcome_text.dart';

class SignUpMainScreen extends StatefulWidget {
  const SignUpMainScreen({
    super.key,
  });

  @override
  State<SignUpMainScreen> createState() => _SignUpMainScreenState();
}

class _SignUpMainScreenState extends State<SignUpMainScreen> {
  int currentStep = 1;
  int stepLength = 3;
  late bool complete;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              SizedBox(
                height: 54.h,
              ),
              const WelcomeText(),
              SizedBox(
                height: 18.h,
              ),
              SignUpStepper(
                totalSteps: stepLength,
                curStep: currentStep,
              ),
              SizedBox(
                height: 28.h,
              ),
              const SignUpText(),
              Container(
                  child: currentStep == 1
                      ? const SignUpStep1()
                      : currentStep == 2
                          ? const SignUpStep2()
                          : const SignUpStep3()),
              SizedBox(
                width: 60.w,
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
                              if (currentStep > 1) {
                                goTo(currentStep - 1);
                              } else if (currentStep == 1) {
                                Navigator.pop(context);
                              }
                            })),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child: BackNextButtons(
                          lable: 'التالي',
                          textColor: Colors.white,
                          buttonColor: AppColors.primary,
                          onTap: () {
                            if (currentStep <= stepLength) {
                              goTo(currentStep + 1);
                            }
                          }),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  goTo(int step) {
    setState(() => currentStep = step);
    if (currentStep > stepLength) {
      setState(() => complete = true);
    }
  }
}
