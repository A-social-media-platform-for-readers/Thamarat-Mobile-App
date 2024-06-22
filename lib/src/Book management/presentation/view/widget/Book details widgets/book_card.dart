import 'package:flutter/material.dart';
import 'package:untitled/src/Book%20management/Data/book_model.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/add_to_button.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/ai_description.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/language_box.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/price_display.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/assets.dart';

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
                  Positioned(left: 61, top: 0, child: PriceDisplay(book: book)),
                  const Positioned(
                    left: 0,
                    top: 255,
                    child: AddToButton(
                        buttonColor: AppColors.primary,
                        txt: 'اشتتري الان',
                        borderColor: AppColors.softAqua,
                        txtColor: Colors.white,
                        leftpos: 76),
                  ),
                  const Positioned(
                    left: 0,
                    top: 196,
                    child: SizedBox(
                      width: 233,
                      height: 47,
                      child: AddToButton(
                          txt: 'اضافة الي السلة',
                          buttonColor: AppColors.softLavender,
                          borderColor: Color(0xFF5AC378),
                          txtColor: Color(0xFF5AC378),
                          leftpos: 59),
                    ),
                  ),
                  const Positioned(
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
                                        width: 143,
                                        height: 26,
                                        child: AiDescription(
                                          txt: 'الكتاب مسموع',
                                          iconUrl: AssetsData.ttsIcon,
                                        )),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 33,
                                    child: SizedBox(
                                        width: 239,
                                        height: 26,
                                        child: AiDescription(
                                          txt: 'الكتاب مترجم بلغات عديدة مثل ',
                                          iconUrl: AssetsData.translateIcon,
                                        )),
                                  ),
                                  Positioned(
                                      left: 99,
                                      top: 68,
                                      child: LanguageBox(languageName: 'عربي')),
                                  Positioned(
                                      left: 36,
                                      top: 68,
                                      child:
                                          LanguageBox(languageName: 'انجليزي')),
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
