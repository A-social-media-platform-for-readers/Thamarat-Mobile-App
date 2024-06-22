import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_colors.dart';

class RatingStars extends StatelessWidget {
  final double rate;
  const RatingStars({super.key, required this.rate});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 67.56.w,
      height: 20.h,
      child:  const Row(
        children: [
          Expanded(
            child: Icon(Icons.star_rate_rounded,
                color: AppColors.goldenYellow ,
                ),
          ),
          Expanded(
            child: Icon(
              Icons.star_rate_rounded,
              color: AppColors.goldenYellow,
            ),
          ),
          Expanded(
            child: Icon(
              Icons.star_rate_rounded,
              color: AppColors.goldenYellow,
            ),
          ),
          Expanded(
            child: Icon(
              Icons.star_rate_rounded,
              color: AppColors.darkGray,
            ),
          ),
          Expanded(
            child: Icon(
              Icons.star_rate_rounded,
              color: AppColors.darkGray,
            ),
          ),
        ],
      ),
    );
  }
}
