import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/assets.dart';
import '../../../../../core/utils/app_fonts.dart';

class IdentificationButton extends StatelessWidget {
  final String identityName;
  final String notselectedIdentityIcon;
  final String selectedIdentityIcon;
  final Color newColor;
  final bool isSelected;
  final VoidCallback onTap;

  const IdentificationButton({
    Key? key,
    required this.identityName,
    required this.notselectedIdentityIcon,
    required this.selectedIdentityIcon,
    required this.newColor,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: isSelected ? 268.w : 160.w,
        height: 47.h,
        decoration: BoxDecoration(
          color: isSelected ? newColor : AppColors.softGray,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 18,
              height: 15,
              child: Image.asset(
                isSelected ? selectedIdentityIcon : notselectedIdentityIcon,
              ),
            ),
            Container(
              width: 38.w,
              height: 24.h,
              margin: EdgeInsets.symmetric(horizontal: 11.w),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  identityName,
                  textAlign: TextAlign.center,
                  style: safeGoogleFont(
                    'Cairo',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: isSelected ? Colors.white : AppColors.charcoal,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 24.w,
              height: 24.h,
              child: Image.asset(
                isSelected ? AssetsData.selected : AssetsData.notSelected,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
