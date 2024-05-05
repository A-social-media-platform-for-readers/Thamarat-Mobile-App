import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../widgets/sign up/identification_button.dart';

class SignUpStep1 extends StatefulWidget {
  const SignUpStep1({Key? key}) : super(key: key);

  @override
  _SignUpStep1State createState() => _SignUpStep1State();
}

class _SignUpStep1State extends State<SignUpStep1> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 33.h,
        ),
        IdentificationButton(
          identityName: 'مؤلف',
          startIdentityIcon: 'assets/Vector (1).png',
          endIdentityIcon: 'assets/Vector (4).png',
          newColor: AppColors.primary,
          isSelected: selectedIndex == 0,
          onTap: () {
            setState(() {
              selectedIndex = selectedIndex == 0 ? -1 : 0;
            });
          },
        ),
        SizedBox(
          height: 23.h,
        ),
        IdentificationButton(
          identityName: 'قارئ',
          startIdentityIcon: 'assets/Vector (2).png',
          endIdentityIcon: 'assets/Vector (5).png',
          newColor: AppColors.coral,
          isSelected: selectedIndex == 1,
          onTap: () {
            setState(() {
              selectedIndex = selectedIndex == 1 ? -1 : 1;
            });
          },
        ),
        SizedBox(
          height: 23.h,
        ),
        IdentificationButton(
          identityName: 'دار نشر',
          startIdentityIcon: 'assets/Vector (3).png',
          endIdentityIcon: 'assets/Vector (6).png',
          newColor: AppColors.cornflowerBlue,
          isSelected: selectedIndex == 2,
          onTap: () {
            setState(() {
              selectedIndex = selectedIndex == 2 ? -1 : 2;
            });
          },
        ),
        SizedBox(
          height: 197.h,
        ),
      ],
    );
  }
}
