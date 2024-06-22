import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class ListViewHeader extends StatelessWidget {
  final String headerTitle;
  const ListViewHeader({super.key, required this.headerTitle});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          SizedBox(
            width: 24.w,
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
          SizedBox(
            width: 147.w,
          ),
          Text(
            'See all',
            style: safeGoogleFont(
              color: Colors.black,
              fontSize: 12,
              'Cairo',
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline,
              height: 0,
            ),
          )
        ],
      ),
      SizedBox(
        height: 14.h,
      ),
    ]);
  }
}

class Colum {}
