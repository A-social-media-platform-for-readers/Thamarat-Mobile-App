import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class BookListViewHeader extends StatelessWidget {
  final String headerTitle;
  const BookListViewHeader({super.key, required this.headerTitle});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          SizedBox(
            width: 24.w,
          ),
          Text(
            'انظر للكل ',
            style: safeGoogleFont(
              color: Colors.black,
              fontSize: 12,
              'Cairo',
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
              height: 0,
            ),
          ),
          SizedBox(
            width: 147.w,
          ),
          Text(
            headerTitle,
            style: safeGoogleFont(
              color: Colors.black,
              fontSize: 18,
              'Cairo',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 14.h,
      ),
    ]);
  }
}

class Colum {}
