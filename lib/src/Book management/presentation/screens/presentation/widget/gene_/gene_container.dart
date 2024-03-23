import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class GeneContainer extends StatelessWidget {
  final String label;
  final Color containerColor;
  const GeneContainer(
      {super.key, required this.label, required this.containerColor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 93.24.w,
        height: 29.h,
        margin: EdgeInsetsDirectional.symmetric(horizontal: 12.0.w),
        alignment: AlignmentDirectional.center,
        decoration: ShapeDecoration(
          color: containerColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Text(
          label,
          style: safeGoogleFont(
            color: Colors.black,
            fontSize: 12,
            'Poppins',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
