import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/authentication/Data/auth_service.dart';
import 'package:untitled/src/authentication/presentation/view/widgets/sign%20up/sign_up_stepper.dart';
import 'package:untitled/src/authentication/presentation/view/widgets/sign%20up/sign_up_text.dart';
import 'package:untitled/src/authentication/presentation/view/screens/sign%20up/sign_up_step1.dart';
import 'package:untitled/src/authentication/presentation/view/screens/sign%20up/sign_up_step2.dart';
import 'package:untitled/src/authentication/presentation/view/screens/sign%20up/sign_up_step3.dart';
import 'package:untitled/src/core/custom_bottomn_nav_bar.dart';
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

  final GlobalKey<SignUpStep2State> step2Key = GlobalKey<SignUpStep2State>();

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _resetPasswordController =
      TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();

  final AuthService authService = AuthService();

  void _register() async {
    try {
      final userData = {
        'identity': identification,
        'name': _userNameController.text,
        'email': _emailController.text,
        'password': _passwordController.text,
      };

      final user = await authService.register(userData);
      print('Registration successful: ${user.name}');
      // Handle successful registration
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CustomBottomNavBar()),
      );
    } catch (e) {
      if (e is DioError) {
        // DioError is thrown by Dio package when there is an issue with the request
        final response = e.response;
        if (response != null) {
          print(
              'Registration failed: ${response.statusCode} ${response.statusMessage}');
          print('Response data: ${response.data}');
        } else {
          print('Registration failed: $e');
        }
      } else {
        print('Registration failed: $e');
      }

      // Show an error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: AppColors.darkGray,
          content: Text(
            "Registration failed. Please try again.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    identification = ""; // Initialize identification variable
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _resetPasswordController.dispose();
    _birthdayController.dispose();
    _genderController.dispose();
    super.dispose();
  }

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
                          ? SignUpStep2(
                              key: step2Key,
                              currentStep: currentStep,
                              goTo: goTo,
                              userNameController: _userNameController,
                              emailController: _emailController,
                              passwordController: _passwordController,
                              resetPasswordController: _resetPasswordController,
                              birthdayController: _birthdayController,
                              genderController: _genderController,
                            )
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
                          lable: currentStep == stepLength ? 'تسجيل' : 'التالي',
                          textColor: Colors.white,
                          buttonColor: AppColors.primary,
                          onTap: () {
                            if (validateStep()) {
                              if (currentStep == 2) {
                                step2Key.currentState!
                                    .signUpFormValidation(context);
                              } else if (currentStep == stepLength) {
                                _register();
                              } else {
                                goTo(currentStep + 1);
                              }
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 44.w,
                ),
              ],
            ),
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
    return true;
  }

  void goTo(int step) {
    setState(() => currentStep = step);
    if (currentStep > stepLength) {
      setState(() => complete = true);
    }
  }
}