import 'package:flutter/material.dart';
import 'package:untitled/src/Book%20management/Data/book_model.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class PriceDisplay extends StatelessWidget {
  final Book book;
  const PriceDisplay({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'السعر : ',
            style: safeGoogleFont(
              color: Colors.black,
              fontSize: 15,
              'Cairo',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          TextSpan(
            text: '${book.price}',
            style: safeGoogleFont(
              color: Colors.black,
              fontSize: 25,
              'Cairo',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          TextSpan(
            text: ' L.E',
            style: safeGoogleFont(
              color: Colors.black,
              fontSize: 15,
              'Cairo',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.right,
    );
  }
}
