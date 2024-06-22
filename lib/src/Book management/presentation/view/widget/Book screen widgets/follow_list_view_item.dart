import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class FollowListViewItem extends StatelessWidget {
  const FollowListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 214.w,
      height: 107.h,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 214.w,
              height: 107.h,
              decoration: ShapeDecoration(
                color: Colors.black.withOpacity(0.05000000074505806),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            left: 13.38.w,
            top: 11.59.h,
            child: SizedBox(
              width: 84.71.w,
              height: 84.71.h,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 84.71.w,
                      height: 84.71.h,
                      decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 4.46.w,
                    top: 3.57.h,
                    child: Container(
                      width: 75.79.w,
                      height: 75.79.h,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 4.46.w,
                    top: 3.57.h,
                    child: Container(
                      width: 75.79.w,
                      height: 75.79.h,
                      decoration: const ShapeDecoration(
                        color: AppColors.silverGrey,
                        shape: OvalBorder(),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 4.46.w,
                    top: 3.57.h,
                    child: Container(
                      width: 75.79.w,
                      height: 75.79.h,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage("https://via.placeholder.com/76x76"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 106.w,
            top: 14.83.h,
            child: SizedBox(
              width: 90.95.w,
              height: 29.h,
              child: Text(
                'دار المعارف',
                textAlign: TextAlign.center,
                style: safeGoogleFont(
                  color: Colors.black,
                  fontSize: 18,
                  'Cairo',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 179.w,
            top: 69.55.h,
            child: SizedBox(
              width: 18.73.w,
              height: 17.83.h,
              child: Text(
                '10K',
                textAlign: TextAlign.center,
                style: safeGoogleFont(
                  color: Colors.black,
                  fontSize: 12,
                  'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 105.22.w,
            top: 66.88.h,
            child: SizedBox(
              width: 62.42.w,
              height: 22.29.h,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 62.42.w,
                      height: 22.29.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF699CFF),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(12.50),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 12.78.w,
                    top: 2.67.h,
                    child: SizedBox(
                      width: 37.45.w,
                      height: 17.83.h,
                      child: Text(
                        'Follow',
                        textAlign: TextAlign.right,
                        style: safeGoogleFont(
                          color: Colors.white,
                          fontSize: 11,
                          'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 118.w,
            top: 45.h,
            child: SizedBox(
              width: 67.39.w,
              height: 17.83.h,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(width: 5.19),
                  SizedBox(
                    width: 54.39.w,
                    height: 17.83.h,
                    child: Text(
                      '9.3 Rating',
                      textAlign: TextAlign.right,
                      style: safeGoogleFont(
                        color: AppColors.goldenYellow,
                        fontSize: 11,
                        'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
