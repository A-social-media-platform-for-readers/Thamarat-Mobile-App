import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/authentication/presentation/view/widgets/sign%20up/identification_button.dart';
import 'package:untitled/src/core/utils/assets.dart';
import '../../../../../core/utils/app_colors.dart';

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
          notselectedIdentityIcon: AssetsData.notselectedAuthorIcon,
          selectedIdentityIcon: AssetsData.selectedAuthorIcon,
          newColor: AppColors.primary,
          isSelected: selectedIndex == 0,
          onTap: () {
            if (selectedIndex == 0) {
              // If author button is already selected, reset it
              onIdentitySelected(-1);
            } else {
              // Otherwise, select author and reset other selections
              onIdentitySelected(0);
            }
          },
        ),
        SizedBox(
          height: 23.h,
        ),
        IdentificationButton(
          identityName: 'قارئ',
          notselectedIdentityIcon: AssetsData.notselectedReaderIcon,
          selectedIdentityIcon: AssetsData.selectedReaderIcon,
          newColor: AppColors.coral,
          isSelected: selectedIndex == 1,
          onTap: () {
            if (selectedIndex == 1) {
              // If already selected, reset selectedIndex
              onIdentitySelected(-1);
            } else {
              // Otherwise, select this identity
              onIdentitySelected(1);
            }
          },
        ),
        SizedBox(
          height: 23.h,
        ),
        IdentificationButton(
          identityName: 'دار نشر',
          notselectedIdentityIcon: AssetsData.notselectedPublisherIcon,
          selectedIdentityIcon: AssetsData.selectedPublisherIcon,
          newColor: AppColors.cornflowerBlue,
          isSelected: selectedIndex == 2,
          onTap: () {
            if (selectedIndex == 2) {
              // If already selected, reset selectedIndex
              onIdentitySelected(-1);
            } else {
              // Otherwise, select this identity
              onIdentitySelected(2);
            }
          },
        ),
        SizedBox(
          height: 197.h,
        ),
      ],
    );
  }
}
