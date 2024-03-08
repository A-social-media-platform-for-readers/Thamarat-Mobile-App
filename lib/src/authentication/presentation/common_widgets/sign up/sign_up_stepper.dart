import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class SignUpStepper extends StatelessWidget {
  final int totalSteps;
  final int curStep;

  const SignUpStepper({
    Key? key,
    required this.curStep,
    required this.totalSteps,
  })  : assert(curStep > 0 == true && curStep <= totalSteps + 1),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 322.0.w,
      child: Row(
        children: _steps(),
      ),
    );
  }

  List<Widget> _steps() {
    var list = <Widget>[];
    for (int i = 0; i < totalSteps; i++) {
      // step circles
      list.add(
        Container(
          width: 38.0,
          height: 38.0,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: const BorderRadius.all(Radius.circular(19.0)),
            border: Border.all(
              color: Colors.white,
              width: 1.0,
            ),
          ),
          child: getInnerElementOfStepper(i),
        ),
      );
      //line between step circles
      if (i != totalSteps - 1) {
        list.add(
          Expanded(
            child: Container(
              height: 7.0.h,
              color: AppColors.primary,
            ),
          ),
        );
      }
    }
    return list;
  }

  Widget getInnerElementOfStepper(index) {
    if (index + 1 < curStep) {
      return Image.asset(
        'assets/group-337.png',
        width: 360.w,
        height: 338.54.h,
      );
    }
    if (index + 1 > curStep) {
      return Image.asset(
        'assets/group-338.png',
        width: 360.w,
        height: 338.54.h,
      );
    } else if (index + 1 == curStep) {
      return Center(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '$curStep',
            style: safeGoogleFont(
              'Cairo',
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.forestGreen,
            ),
          ),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
