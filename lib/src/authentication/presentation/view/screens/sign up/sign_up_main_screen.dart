import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/authentication/presentation/view/widgets/sign%20up/sign_up_stepper.dart';
import 'package:untitled/src/authentication/presentation/view/widgets/sign%20up/sign_up_text.dart';
import 'package:untitled/src/authentication/presentation/view/screens/sign%20up/sign_up_step1.dart';
import 'package:untitled/src/authentication/presentation/view/screens/sign%20up/sign_up_step2.dart';
import 'package:untitled/src/authentication/presentation/view/screens/sign%20up/sign_up_step3.dart';
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
  int selectedIndex = -1;
  late String identification;

  @override
  void initState() {
    super.initState();
    identification = ""; // Initialize identification variable
  }

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
                    ? SignUpStep1(
                        selectedIndex: selectedIndex,
                        onIdentitySelected: (index) {
                          setState(() {
                            selectedIndex = index;
                            switch (selectedIndex) {
                              case 0:
                                identification = "AUTHOR";
                                break;
                              case 1:
                                identification = "READER";
                                break;
                              case 2:
                                identification = "PUBLISHER";
                                break;
                              default:
                                identification = ""; // Reset identification
                                break;
                            }
                          });
                        },
                      )
                    : currentStep == 2
                        ? const SignUpStep2()
                        : const SignUpStep3(),
              ),
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
                        },
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child: BackNextButtons(
                        lable: 'التالي',
                        textColor: Colors.white,
                        buttonColor: AppColors.primary,
                        onTap: () {
                          if (validateStep()) {
                            goTo(currentStep + 1);
                          }
                        },
                      ),
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

  bool validateStep() {
    if (currentStep == 1 && selectedIndex == -1) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: AppColors.darkGray,
          content: Text(
            "يرجى اختيار الهوية الخاصة بك",
            textAlign: TextAlign.end,
            style: TextStyle(color: Colors.white),
          ),
          duration: Duration(seconds: 2),
        ),
      );
      return false;
    }
    print(identification);
    return true;
  }

  void goTo(int step) {
    setState(() => currentStep = step);
    if (currentStep > stepLength) {
      setState(() => complete = true);
    }
  }
}
