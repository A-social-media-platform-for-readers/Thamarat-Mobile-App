import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_colors.dart';

class DividingLine extends StatelessWidget {
  final double width;
  const DividingLine({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: AppColors.lightGray,
          ),
        ),
      ),
    );
  }
}
