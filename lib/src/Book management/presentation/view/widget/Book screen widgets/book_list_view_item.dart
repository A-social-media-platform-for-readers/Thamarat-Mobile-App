import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/Book%20management/Data/book_model.dart';
import 'package:untitled/src/Book%20management/presentation/view/screens/book_details_screen.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';
import 'package:untitled/src/core/utils/assets.dart';

class BookListViewItem extends StatelessWidget {
  final Book book;

  const BookListViewItem({required this.book, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BookDetailsScreen(book: book),
          ),
        );
      },
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 130.w,
              height: 196.h,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: book.coverImage != null
                      ? NetworkImage(book.coverImage!)
                      : const AssetImage(AssetsData.testImage)
                          as ImageProvider<Object>,
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0.w,
            top: 207.h,
            child: SizedBox(
              width: 88.w,
              height: 39.h,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Text(
                      book.title ?? 'No Title',
                      style: safeGoogleFont(
                        'Poppins',
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0.w,
                    top: 21.h,
                    child: Text(
                      book.author ?? 'Unknown Author',
                      style: safeGoogleFont(
                        'Poppins',
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
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
