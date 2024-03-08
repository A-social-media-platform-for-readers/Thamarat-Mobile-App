import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common_widgets/sign_up_text_field.dart';

class SignUpStep3 extends StatelessWidget {
  const SignUpStep3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 33.h,
        ),
        SignUpTextField(
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          obscureText: false,
          hintText: 'تاريخ الميلاد',
        ),
        SizedBox(
          height: 15.52.h,
        ),
        SignUpTextField(
          controller: TextEditingController(),
          keyboardType: TextInputType.emailAddress,
          obscureText: false,
          hintText: 'الجنس',
        ),
        SizedBox(
          height: 275.52.h,
        ),
      ],
    );
  }
}
