import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:untitled/src/Book%20management/Data/book_model.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class BookDescription extends StatelessWidget {
  final Book book;
  const BookDescription({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 316.w,
      child: ReadMoreText(
        book.description ?? "unknow",
        trimMode: TrimMode.Line,
        trimLines: 2,
        colorClickableText: AppColors.primary,
        trimCollapsedText: 'Show more',
        trimExpandedText: 'Show less',
        style: safeGoogleFont(
          color: Colors.black,
          fontSize: 12,
          'Poppins',
          fontWeight: FontWeight.w300,
          height: 0,
        ),
      ),
    );
  }
}
