import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/authentication/presentation/common_widgets/forgot%20password/forgot_password_button.dart';
import 'package:untitled/src/authentication/presentation/common_widgets/login_text_field.dart';
import 'package:untitled/src/authentication/presentation/screens/forgot%20password/otp_screen.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_fonts.dart';
import '../../common_widgets/create_an_account_widget.dart';
import '../../common_widgets/forgot password/forgot_password_appbar.dart';
import '../../../../Book management/presentation/screens/home_screen.dart';

class ResetPsswordScreen extends StatefulWidget {
  const ResetPsswordScreen({super.key});

  @override
  State<ResetPsswordScreen> createState() => _ResetPsswordScreenState();
}

class _ResetPsswordScreenState extends State<ResetPsswordScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController resetPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leadingWidth: 31.89.w,
        leading: const ForgotPasswordAppBar(
          screen: OtpScreen(),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            SizedBox(
              height: 78.11.h,
            ),
            SizedBox(
              width: 98.w,
              height: 21.0.h,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'إنشاء كلمة مرور جديدة',
                  style: safeGoogleFont('Cairo',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            SizedBox(
              width: 285.0.w,
              height: 19.0.h,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'أدخل كلمة المرور الجديدة',
                  style: safeGoogleFont(
                    'Cairo',
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff575757),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  LoginTextField(
                      controller: passwordController,
                      lable: 'كلمة المرور',
                      keyboardType: TextInputType.visiblePassword,
                      hintText: 'كلمة المرور'),
                  SizedBox(
                    height: 11.h,
                  ),
                  LoginTextField(
                      controller: resetPasswordController,
                      lable: 'تاكيد كلمة المرور',
                      keyboardType: TextInputType.visiblePassword,
                      hintText: 'تاكيد كلمة المرور'),
                  SizedBox(
                    height: 44.h,
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        if (passwordController.text ==
                            resetPasswordController.text) {
                          setState(() {});
                          final scaffoldContext = ScaffoldMessenger.of(context);
                          scaffoldContext.hideCurrentSnackBar();
                          scaffoldContext.showSnackBar(
                            const SnackBar(
                              backgroundColor: AppColors.darkGray,
                              content: Text(
                                "..... انتظر للتحميل",
                                textAlign: TextAlign.end,
                                style: TextStyle(color: Colors.white),
                              ),
                              duration: Duration(seconds: 5),
                            ),
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                          );
                        }
                      } else {
                        setState(() {});
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          backgroundColor: AppColors.darkGray,
                          content: Text(
                            "كلمة المرور غير مطابقة",
                            textAlign: TextAlign.end,
                            style: TextStyle(color: Colors.white),
                          ),
                        ));
                      }
                    },
                    child: const ForgotPasswordButton(
                      lable: 'تاكيد',
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 249.h,
            ),
            const CreateAnAccountWidget()
          ]),
        ),
      ),
    );
  }
}
