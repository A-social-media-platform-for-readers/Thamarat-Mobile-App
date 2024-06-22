import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/Book%20management/Data/book_model.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/rating_stars.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class BookDataDisplay extends StatelessWidget {
  final Book book;

  const BookDataDisplay({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 319.56.w,
      height: 77.01.h,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 10,
            child: SizedBox(
              width: 116.w,
              height: 47.h,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0.h,
                    child: Text(
                      book.title ?? 'No Title',
                      style: safeGoogleFont(
                        color: Colors.black,
                        fontSize: 20,
                        'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 26.h,
                    child: Text(
                      book.author ?? 'Unknown Author',
                      style: safeGoogleFont(
                        color: AppColors.darkSlateGray,
                        fontSize: 14,
                        'Poppins',
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 252.w,
            top: 0,
            child: SizedBox(
              width: 67.56.w,
              height: 84.h,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 48.h,
                    child: Text(
                      "${book.rate}",
                      style: safeGoogleFont(
                        color: Colors.black,
                        fontSize: 32,
                        'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  RatingStars(
                    rate: book.rate ?? 0.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
