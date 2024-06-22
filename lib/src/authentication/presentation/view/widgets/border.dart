import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/const.dart';

class TextFeildShape extends StatelessWidget {
  final Color bordercolor;
  final double height;
  const TextFeildShape(
      {super.key, required this.bordercolor, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: signUpFeildWidth.w,
      height: height.h,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: bordercolor),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
