import 'package:flutter/material.dart';
import 'package:untitled/src/Book%20management/Data/book_model.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class BookCard extends StatelessWidget {
  final Book book;
  const BookCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 264,
      height: 333,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 264,
              height: 333,
              decoration: ShapeDecoration(
                color: AppColors.softLavender,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.10000000149011612),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 9,
            child: SizedBox(
              width: 233,
              height: 302,
              child: Stack(
                children: [
                  Positioned(
                    left: 61,
                    top: 0,
                    child: Text.rich(
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
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 255,
                    child: SizedBox(
                      width: 233,
                      height: 47,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 233,
                              height: 47,
                              decoration: ShapeDecoration(
                                color: AppColors.primary,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                shadows: const [
                                  BoxShadow(
                                    color: AppColors.softAqua,
                                    blurRadius: 4,
                                    offset: Offset(0, 0),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 76,
                            top: 10,
                            child: Text(
                              'اشتتري الان',
                              textAlign: TextAlign.right,
                              style: safeGoogleFont(
                                color: Colors.white,
                                fontSize: 15,
                                'Cairo',
                                fontWeight: FontWeight.w800,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 196,
                    child: SizedBox(
                      width: 233,
                      height: 47,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 233,
                              height: 47,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0xFF5AC378)),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 66,
                            top: 10,
                            child: Text(
                              'اضافة الي السلة',
                              textAlign: TextAlign.right,
                              style: safeGoogleFont(
                                color: const Color(0xFF5AC378),
                                fontSize: 15,
                                'Cairo',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 11,
                    top: 71,
                    child: SizedBox(
                      width: 219,
                      height: 94,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: SizedBox(
                              width: 219,
                              height: 94,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 95,
                                    top: 0,
                                    child: SizedBox(
                                      width: 123,
                                      height: 26,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'الكتاب مسموع',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'Cairo',
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                          const SizedBox(width: 11),
                                          Container(
                                            width: 24,
                                            height: 24,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(),
                                            child: const FlutterLogo(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 33,
                                    child: SizedBox(
                                      width: 219,
                                      height: 26,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'الكتاب مترجم بلغات عديدة مثل ',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'Cairo',
                                              fontWeight: FontWeight.w600,
                                              height: 0,
                                            ),
                                          ),
                                          const SizedBox(width: 11),
                                          Container(
                                            width: 24,
                                            height: 24,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(),
                                            child: const FlutterLogo(),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 162,
                                    top: 68,
                                    child: SizedBox(
                                      width: 55,
                                      height: 25,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 1,
                                            child: Container(
                                              width: 55,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                color: const Color(0x7A92E3A9),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            left: 15,
                                            top: 0,
                                            child: SizedBox(
                                              width: 25,
                                              height: 21,
                                              child: Text(
                                                'عربي',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Cairo',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 99,
                                    top: 68,
                                    child: SizedBox(
                                      width: 55,
                                      height: 26,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 1,
                                            child: Container(
                                              width: 55,
                                              height: 24,
                                              decoration: ShapeDecoration(
                                                color: const Color(0x7A92E3A9),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4)),
                                              ),
                                            ),
                                          ),
                                          const Positioned(
                                            left: 15,
                                            top: 0,
                                            child: SizedBox(
                                              width: 25,
                                              height: 26,
                                              child: Text(
                                                'عربي',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Cairo',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 36,
                            top: 68,
                            child: SizedBox(
                              width: 55,
                              height: 26,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 1,
                                    child: Container(
                                      width: 55,
                                      height: 24,
                                      decoration: ShapeDecoration(
                                        color: const Color(0x7A92E3A9),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    left: 15,
                                    top: 0,
                                    child: SizedBox(
                                      width: 25,
                                      height: 26,
                                      child: Text(
                                        'عربي',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Cairo',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
