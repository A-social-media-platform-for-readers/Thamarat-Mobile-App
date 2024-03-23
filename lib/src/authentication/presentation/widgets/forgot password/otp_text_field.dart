import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_colors.dart';

class OtpTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool first;
  final bool last;

  const OtpTextField({
    super.key,
    required this.controller,
    required this.first,
    required this.last,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 60.9.w,
        height: 60.9.h,
        margin: EdgeInsetsDirectional.only(end: 8.42.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.silver,
        ),
        child: Center(
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            controller: controller,
            inputFormatters: [LengthLimitingTextInputFormatter(1)],
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              } else if (value.isEmpty && first == false) {
                FocusScope.of(context).previousFocus();
              } else if (value.isEmpty && last == true) {}
            },
            textInputAction: TextInputAction.none,
          ),
        ),
      ),
    );
  }
}
