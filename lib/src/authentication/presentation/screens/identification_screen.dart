import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/authentication/presentation/common_widgets/identification_button.dart';
import 'package:untitled/src/authentication/presentation/common_widgets/sign_up_text.dart';
import '../../../core/utils/app_colors.dart';
import '../common_widgets/welcome_text.dart';

class IdentificationScreen extends StatefulWidget {
  const IdentificationScreen({
    super.key,
  });

  @override
  State<IdentificationScreen> createState() => _IdentificationScreenState();
}

class _IdentificationScreenState extends State<IdentificationScreen> {
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
              SizedBox(
                width: 322.w,
                height: 38.5.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 294.w,
                          height: 7.h,
                          color: AppColors.primary,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              const SignUpText(),
              SizedBox(
                height: 33.h,
              ),
              const IdentificationButton(
                  identity: 'مؤلف',
                  newColor: Colors.orange,
                  icon: 'assets/Vector (1).png'),
              SizedBox(
                height: 23.h,
              ),
              const IdentificationButton(
                  identity: 'قارئ',
                  newColor: Colors.orange,
                  icon: 'assets/Vector (3).png'),
              SizedBox(
                height: 23.h,
              ),
              const IdentificationButton(
                  identity: 'دار نشر',
                  newColor: Colors.orange,
                  icon: 'assets/Vector (2).png'),
            ]),
          ),
        ),
      ),
    );
  }
}
