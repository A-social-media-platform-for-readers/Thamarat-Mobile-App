import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/Book%20management/Data/book_model.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/Publishing_data.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/book_card.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/book_comment_list_view.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/book_commentfeild.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/book_data_diplay.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/book_description.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/book_display.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/book_genre.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/dividing_line.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class BookDetailsScreen extends StatelessWidget {
  final Book book;

  const BookDetailsScreen({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BookDisplay(book: book),
              BookDataDisplay(book: book),
              SizedBox(
                height: 11.h,
              ),
              BookGenre(
                book: book,
              ),
              SizedBox(
                height: 27.h,
              ),
              DividingLine(width: 264.w),
              SizedBox(
                height: 22.h,
              ),
              BookDescription(book: book),
              SizedBox(
                height: 51.h,
              ),
              PublishingData(book: book),
              SizedBox(
                height: 50.h,
              ),
              BookCard(book: book),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'قيم الكتاب :',
                textAlign: TextAlign.center,
                style: safeGoogleFont(
                  color: Colors.black,
                  fontSize: 12,
                  'Montserrat',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              AnimatedRatingStars(
                initialRating: book.rate ?? 3.5,
                minRating: 0.0,
                maxRating: 5.0,
                filledColor: Colors.amber,
                emptyColor: Colors.grey,
                filledIcon: Icons.star,
                halfFilledIcon: Icons.star_half,
                emptyIcon: Icons.star_border,
                onChanged: (double rating) {
                  print('Rating: $rating');
                },
                displayRatingValue: true,
                interactiveTooltips: true,
                customFilledIcon: Icons.star,
                customHalfFilledIcon: Icons.star_half,
                customEmptyIcon: Icons.star_border,
                starSize: 30.0,
                animationDuration: const Duration(milliseconds: 300),
                animationCurve: Curves.easeInOut,
                readOnly: false,
              ),
              SizedBox(
                height: 33.h,
              ),
              DividingLine(width: 336.w),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Comments and summaries',
                textAlign: TextAlign.right,
                style: safeGoogleFont(
                  color: Colors.black,
                  fontSize: 15,
                  'Cairo',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              const BookCommentField(),
              SizedBox(
                height: 34.h,
              ),
              const BookCommentListView(),
              SizedBox(
                height: 34.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
