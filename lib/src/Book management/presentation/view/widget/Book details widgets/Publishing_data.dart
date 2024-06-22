import 'package:flutter/material.dart';
import 'package:untitled/src/Book%20management/Data/book_model.dart';

class PublishingData extends StatelessWidget {
  final Book book;
  const PublishingData({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.translate(
          offset: const Offset(0, -16),
          child: Text(
            'Publisher: ${book.publisher}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF828282),
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              height: 0.12,
            ),
          ),
        ),
        Text(
          'Date Published: ${book.publicationDate}',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF828282),
            fontSize: 12,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            height: 0.12,
          ),
        ),
        Transform.translate(
          offset: const Offset(0, 16),
          child: const Text(
            'ISBN13: 9780571333134',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF828282),
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              height: 0.12,
            ),
          ),
        ),
      ],
    );
  }
}
