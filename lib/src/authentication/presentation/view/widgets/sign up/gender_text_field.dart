import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/authentication/presentation/view/widgets/border.dart';
import 'package:untitled/src/core/utils/const.dart';
import 'package:untitled/src/core/utils/assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_fonts.dart';

class GenderTextField extends StatefulWidget {
  final TextEditingController controller;

  const GenderTextField({
    super.key,
    required this.controller,
  });

  @override
  State<GenderTextField> createState() => _GenderTextFieldState();
}

class _GenderTextFieldState extends State<GenderTextField> {
  String? typeChoose;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: signUpFeildWidth.w,
        height: signUpFeildHeight.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          Positioned(
              left: 0.w,
              top: 0.h,
              child: const TextFeildShape(
                  bordercolor: AppColors.darkGray, height: signUpFeildHeight)),
          Positioned(
            left: 0.w,
            top: 0.h,
            child: SizedBox(
              width: signUpFeildWidth.w,
              height: signUpFeildHeight.h,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: DropdownButtonFormField<String>(
                    hint: Text(
                      'النوع',
                      style: safeGoogleFont(
                        'Cairo',
                        color: AppColors.darkGray,
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    padding: EdgeInsetsDirectional.symmetric(
                        horizontal: 15.w, vertical: 5.h),
                    dropdownColor: Colors.white,
                    icon: SizedBox(
                      width: 15.w,
                      height: 15.h,
                      child: Image.asset(
                        AssetsData.typeIcon,
                      ),
                    ),
                    iconSize: 36,
                    style: safeGoogleFont(
                      'Cairo',
                      color: AppColors.darkGray,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                    value: typeChoose,
                    items: <String>['M', 'F']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        typeChoose = newValue;
                      });
                    }),
              ),
            ),
          ),
        ]));
  }
}
