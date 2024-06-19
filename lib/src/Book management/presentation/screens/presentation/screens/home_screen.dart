import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/src/Book%20management/presentation/screens/presentation/widget/gene_/Book_list_view_header.dart';
import 'package:untitled/src/Book%20management/presentation/screens/presentation/widget/gene_/book_list_view_item.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';
import 'package:untitled/src/core/utils/assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  SizedBox(
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
                  SizedBox(
                    width: 144,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 39.w,
                      height: 39.h,
                      margin: EdgeInsetsDirectional.only(end: 36.0.w),
                      decoration: ShapeDecoration(
                        color: Colors.white,
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
                          child: SvgPicture.asset(AssetsData.notification),
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
                      color: Color(0x3F000000),
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
                child: Image.asset(AssetsData.advertisement),
              ),
              SizedBox(
                height: 34.h,
              ),
              const BookListViewHeader(
                headerTitle: 'الكتب الأكثر انتشاراً',
              ),
              const BookListView(),
              const BookListViewHeader(
                headerTitle: "الكتب المجانية",
              ),
              const BookListView(),
            ],
          ),
        ),
      ),
    );
  }
}

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 246.h,
      margin: EdgeInsetsDirectional.fromSTEB(34.w, 0, 0, 24.h),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
                width: 141.w,
                height: 246.h,
                padding: EdgeInsetsDirectional.only(end: 11.w),
                child: const BookListViewItem());
          }),
    );
  }
}
