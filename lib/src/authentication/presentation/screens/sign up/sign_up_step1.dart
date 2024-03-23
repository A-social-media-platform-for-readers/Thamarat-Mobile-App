import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../widgets/sign up/identification_button.dart';

class SignUpStep1 extends StatelessWidget {
  const SignUpStep1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 33.h,
        ),
        const IdentificationButton(
          identityName: 'مؤلف',
          startIdentityIcon: 'assets/Vector (1).png',
          endIdentityIcon: 'assets/Vector (4).png',
          newColor: AppColors.primary,
        ),
        SizedBox(
          height: 23.h,
        ),
        const IdentificationButton(
          identityName: 'قارئ',
          startIdentityIcon: 'assets/Vector (2).png',
          endIdentityIcon: 'assets/Vector (5).png',
          newColor: AppColors.coral,
        ),
        SizedBox(
          height: 23.h,
        ),
        const IdentificationButton(
          identityName: 'دار نشر',
          startIdentityIcon: 'assets/Vector (3).png',
          endIdentityIcon: 'assets/Vector (6).png',
          newColor: AppColors.cornflowerBlue,
        ),
        SizedBox(
          height: 197.h,
        ),
      ],
    );
  }
}
