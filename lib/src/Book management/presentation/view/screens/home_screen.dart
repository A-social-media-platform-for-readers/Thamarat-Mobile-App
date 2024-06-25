import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20screen%20widgets/list_view_header.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20screen%20widgets/book_list_view.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';
import 'package:untitled/src/core/utils/assets.dart';
import 'package:untitled/src/Book%20management/Data/book_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final BookService bookService = BookService();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 31.w,
                  ),
                  Expanded(
                    child: IconButton(
                      icon: SizedBox(
                        width: 24.w,
                        height: 24.h,
                        child: SvgPicture.asset(AssetsData.homeList),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Expanded(
                    child: SizedBox(
                      width: 73.w,
                      height: 23.h,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'thamarat',
                          style: safeGoogleFont(
                            'Poppins',
                            color: Colors.black,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 144,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 39.w,
                      height: 39.h,
                      margin: EdgeInsetsDirectional.only(end: 36.0.w),
                      decoration: ShapeDecoration(
                        color: AppColors.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: IconButton(
                        icon: SizedBox(
                          width: 24.w,
                          height: 24.h,
                          child: Image.asset('assets/Media.png'),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 6.w,
              ),
              Container(
                width: 300.w,
                height: 41.h,
                alignment: Alignment.centerLeft,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  shadows: const [
                    BoxShadow(
                      color: AppColors.softBlack,
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Container(
                  margin: EdgeInsetsDirectional.symmetric(
                      horizontal: 16.0.w, vertical: 10.0.h),
                  child: Text(
                    'Search',
                    style: safeGoogleFont(
                      'Poppins',
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17.w,
              ),
              SizedBox(
                height: 28.w,
              ),
              SizedBox(
                width: 312.w,
                height: 181.h,
                child: Image.asset('assets/Group_12785.png'),
              ),
              SizedBox(
                height: 34.h,
              ),
              const ListViewHeader(
                headerTitle: 'Popular Books',
              ),
              BookListView(
                fetchBooksCallback: bookService.fetchPopularBooks,
              ),
              SizedBox(
                height: 24.h,
              ),
              const ListViewHeader(
                headerTitle: 'Books with Higher Rating',
              ),
              BookListView(
                fetchBooksCallback: bookService.fetchHighRateBooks,
              ),
              SizedBox(
                height: 24.h,
              ),
              const ListViewHeader(
                headerTitle: 'Free Books',
              ),
              BookListView(
                fetchBooksCallback: bookService.fetchFreeBooks,
              ),
              SizedBox(
                height: 49.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
