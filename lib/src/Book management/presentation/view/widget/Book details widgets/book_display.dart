import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/Book%20management/Data/book_model.dart';
import 'package:untitled/src/Book%20management/presentation/view/screens/home_screen.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/assets.dart';

class BookDisplay extends StatelessWidget {
  final Book book;
  const BookDisplay({
    super.key,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.w,
      height: 354.h,
      child: Stack(
        children: [
          Container(
            width: 360.w,
            height: 354.h,
            decoration: const BoxDecoration(
              color: AppColors.softLavender,
            ),
          ),
          Positioned(
            left: 24.w,
            top: 28.h,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              icon: Container(
                width: 39,
                height: 39,
                decoration: ShapeDecoration(
                  color: const Color(0xFFE6EEFA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Container(
                  width: 24,
                  height: 24,
                  alignment: AlignmentDirectional.center,
                  child: const Icon(Icons.arrow_back),
                ),
              ),
            ),
          ),
          Positioned(
            left: 130.w,
            top: 33.55.h,
            child: SizedBox(
              width: 108.w,
              height: 24.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 24.w,
                    height: 24.h,
                    child: Image.asset(AssetsData.translateIcon),
                  ),
                  SizedBox(width: 25.w),
                  SizedBox(
                    width: 24.w,
                    height: 24.h,
                    child: Image.asset(AssetsData.ttsIcon),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 298.w,
            top: 36.55.h,
            child: SizedBox(
              width: 24.w,
              height: 24.h,
              child: Image.asset(AssetsData.favoriteIcon),
            ),
          ),
          Positioned(
            left: 120.w,
            top: 75.55.h,
            child: Container(
              width: 136,
              height: 204,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: book.coverImage != null
                      ? NetworkImage(book.coverImage!)
                      : const AssetImage(AssetsData.testImage)
                          as ImageProvider<Object>,
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                shadows: const [
                  BoxShadow(
                    color: AppColors.translucentRoyalBlue,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 145.w,
            top: 333.h,
            child: SizedBox(
              width: 71,
              height: 5,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 8,
                      height: 5,
                      decoration: ShapeDecoration(
                        color: AppColors.lightGray,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 12,
                    top: 0,
                    child: Container(
                      width: 47,
                      height: 5,
                      decoration: ShapeDecoration(
                        color: AppColors.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 63,
                    top: 0,
                    child: Container(
                      width: 8,
                      height: 5,
                      decoration: ShapeDecoration(
                        color: AppColors.lightGray,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
