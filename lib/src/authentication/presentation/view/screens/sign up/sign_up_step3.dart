import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class SignUpStep3 extends StatefulWidget {
  const SignUpStep3({super.key});

  @override
  State<SignUpStep3> createState() => _SignUpStep3State();
}

class _SignUpStep3State extends State<SignUpStep3> {
  int tag = 1;
  List<String> tags = [];
  List<String> options = [
    'الكلاسيكيات',
    'الأطفال',
    'سيرة شخصية',
    'فنون',
    'جريمة',
    'كتب الطبخ',
    'معاصر',
    'كاريكاتير',
    'رعب',
    'خيالي',
    'كتب إلكترونية',
    'الفكاهة والكوميديا',
    'الخيال التاريخي',
    'تاريخ',
    'غير الخيالية',
    'موسيقى',
    'مانغا',
    'مذكرات',
    'دِين',
    'الروايات المصورة',
    'شِعر',
    'فلسفة',
    'تشويق',
    'الخيال العلمي',
    'علوم',
    'رومانسي',
    'السيرة الذاتية',
    'رياضات',
    'إثارة',
    'سفر',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ChipsChoice.multiple(
            alignment: WrapAlignment.center,
            value: tags,
            onChanged: (val) => setState(() => tags = val),
            choiceItems: C2Choice.listFrom<String, String>(
              source: options,
              value: (i, v) => v,
              label: (i, v) => v,
            ),
            wrapped: true,
            choiceStyle: C2ChipStyle(
              height: 41.h,
              padding: const EdgeInsets.all(10),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              backgroundColor: Colors.white,
              borderColor: AppColors.darkGray,
              borderWidth: 1.0,
              borderStyle: BorderStyle.solid,
              foregroundStyle: safeGoogleFont(
                color: AppColors.darkGray,
                fontSize: 11.sp,
                'Cairo',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(
            height: 100.0.h,
          ),
        ],
      ),
    );
  }
}
