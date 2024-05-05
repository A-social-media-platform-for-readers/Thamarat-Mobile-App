import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/src/Book%20management/presentation/screens/presentation/widget/gene_/book_list_view_item.dart';
import 'package:untitled/src/Book%20management/presentation/screens/presentation/widget/gene_/gene_container.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';
import 'package:untitled/src/core/utils/assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Center(
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
                    width: 13.w,
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
                    width: 144.w,
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
              Container(
                width: 281.16.w,
                height: 29.h,
                alignment: AlignmentDirectional.center,
                child: const Row(
                  children: [
                    GeneContainer(
                        label: 'Sciences', containerColor: AppColors.peachPuff),
                    GeneContainer(
                        label: 'stories', containerColor: AppColors.primary),
                    GeneContainer(
                        label: 'Novels',
                        containerColor: AppColors.lightBlueishTeal),
                  ],
                ),
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
              Row(
                children: [
                  SizedBox(
                    width: 24.w,
                  ),
                  Text(
                    'Popular Book',
                    style: safeGoogleFont(
                      color: Colors.black,
                      fontSize: 18,
                      'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 147.w,
                  ),
                  Text(
                    'see All',
                    style: safeGoogleFont(
                      color: Colors.black,
                      fontSize: 12,
                      'Poppins',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      height: 0,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 32.0.w,
                  ),
                  const BookListViewItem(),
                ],
              ),
              SizedBox(
                height: 32.0.w,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
