import 'package:flutter/material.dart';
import 'package:untitled/src/Book%20management/Data/book_model.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';
import 'package:untitled/src/core/utils/assets.dart';

class BookGenre extends StatelessWidget {
  final Book book;
  const BookGenre({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162,
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: ShapeDecoration(
        color: AppColors.mintGreen,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 14,
              height: 14,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetsData.religiouIcon),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 9),
          Expanded(
            child: Text(
              book.genre ?? 'unknown',
              style: safeGoogleFont(
                color: Colors.black,
                fontSize: 14,
                'Cairo',
                fontWeight: FontWeight.w300,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
