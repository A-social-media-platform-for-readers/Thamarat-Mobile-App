import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:untitled/src/core/utils/const.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_fonts.dart';

class BirthdayTextField extends StatefulWidget {
  final TextEditingController controller;

  const BirthdayTextField({
    super.key,
    required this.controller,
  });

  @override
  State<BirthdayTextField> createState() => _BirthdayTextFieldState();
}

class _BirthdayTextFieldState extends State<BirthdayTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 307.w,
      height: signUpFeildHeight.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Positioned(
            left: 0.w,
            top: 0.h,
            child: Container(
              width: signUpFeildWidth.w,
              height: signUpFeildHeight.h,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: AppColors.darkGray),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0.w,
            top: 0.h,
            child: SizedBox(
              width: 297.w,
              height: signUpFeildHeight.h,
              child: TextFormField(
                textAlign: TextAlign.end,
                controller: widget.controller,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.calendar_today),
                  border: InputBorder.none,
                  hintText: 'تاريخ الميلاد',
                  hintStyle: safeGoogleFont(
                    'Cairo',
                    color: AppColors.darkGray,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                readOnly: true,
                onTap: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  ).then((value) {
                    if (value != null) {
                      // Format the date as yyyy-MM-dd
                      final formattedDate =
                          DateFormat('yyyy-MM-dd').format(value);
                      widget.controller.text = formattedDate;
                    }
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
