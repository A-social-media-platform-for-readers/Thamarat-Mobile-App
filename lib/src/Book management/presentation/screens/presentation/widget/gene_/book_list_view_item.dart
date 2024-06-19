import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';
import 'package:untitled/src/core/utils/assets.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 130.w,
            height: 196.h,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: AssetImage(AssetsData.testImage),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        Positioned(
          left: 6.w,
          top: 6.h,
          child: SizedBox(
            width: 61.w,
            height: 25.h,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 61.w,
                    height: 25.h,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF92E3A9),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 2, color: Colors.white),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 18.w,
                  top: 5.65.h,
                  child: SizedBox(
                    width: 26.w,
                    height: 14.52.h,
                    child: Text(
                      'Free',
                      style: safeGoogleFont(
                        color: Colors.white,
                        fontSize: 12,
                        'Poppins',
                        fontWeight: FontWeight.w500,
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
          left: 0.w,
          top: 207.h,
          child: SizedBox(
            width: 88.w,
            height: 39.h,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Text(
                    'book name',
                    style: safeGoogleFont(
                      color: Colors.black,
                      fontSize: 14,
                      'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 0.w,
                  top: 21.h,
                  child: Text(
                    'm. aboelyazed',
                    style: safeGoogleFont(
                      color: Colors.black,
                      fontSize: 12,
                      'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
