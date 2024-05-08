import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/authentication/presentation/widgets/sign up/identification_button.dart';
import '../../../../core/utils/app_colors.dart';

class SignUpStep1 extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onIdentitySelected;

  const SignUpStep1({
    Key? key,
    required this.selectedIndex,
    required this.onIdentitySelected,
  }) : super(key: key);

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
            onIdentitySelected(0);
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
            onIdentitySelected(1);
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
            onIdentitySelected(2);
          },
        ),
        SizedBox(
          height: 197.h,
        ),
      ],
    );
  }
}
