import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';
import 'package:untitled/src/core/utils/assets.dart';

class BookCommentField extends StatelessWidget {
  const BookCommentField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.w), // Adjust padding as needed
      child: Container(
        width: 312.w,
        padding: EdgeInsets.all(8.0.w),
        decoration: ShapeDecoration(
          color: Color(0xFFF4F4FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                maxLines: null, // Allows the TextField to expand vertically
                decoration: InputDecoration(
                  hintText: '.......أضف تعليق أو ملخصاً للكتاب',
                  hintStyle: safeGoogleFont(
                    color: Colors.black,
                    fontSize: 14,
                    'Cairo',
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(width: 8.0.w),
            SizedBox(
              width: 24.w,
              height: 24.w,
              child: Image.asset(AssetsData.bookSummaryIcon),
            ),
            SizedBox(width: 16.0.w),
            Container(
              width: 34.w,
              height: 34.w,
              decoration: ShapeDecoration(
                color: Color(0xFF5AC378),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Center(
                child: Container(
                  width: 24.w,
                  height: 24.w,
                  child: Image.asset(AssetsData.bookCommment),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
