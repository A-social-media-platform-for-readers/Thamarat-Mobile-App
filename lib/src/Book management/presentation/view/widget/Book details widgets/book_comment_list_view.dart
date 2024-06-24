import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/Book%20management/presentation/view/widget/Book%20details%20widgets/book_comment_list_view_item.dart';

class BookCommentListView extends StatelessWidget {
  const BookCommentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 227.h,
      margin: EdgeInsetsDirectional.fromSTEB(16.w, 0, 0, 26.h),
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsetsDirectional.only(end: 14.w),
                child: const BookCommentListViewItem());
          }),
    );
  }
}
