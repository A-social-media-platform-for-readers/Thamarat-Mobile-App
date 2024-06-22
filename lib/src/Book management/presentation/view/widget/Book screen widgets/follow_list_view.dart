import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20screen%20widgets/follow_list_view_item.dart';

class FollowListView extends StatelessWidget {
  const FollowListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 227.h,
      margin: EdgeInsetsDirectional.fromSTEB(16.w, 0, 0, 26.h),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsetsDirectional.only(end: 14.w),
                child: Column(children: [
                  const FollowListViewItem(),
                  SizedBox(
                    height: 13.h,
                  ),
                  const FollowListViewItem()
                ]),
              );
            }),
      ),
    );
  }
}
