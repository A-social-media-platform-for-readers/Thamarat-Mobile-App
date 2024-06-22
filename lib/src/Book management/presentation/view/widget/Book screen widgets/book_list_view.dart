import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/Book%20management/Data/book_model.dart';
import 'book_list_view_item.dart';

typedef FetchBooksCallback = Future<Map<String, dynamic>> Function(
    {String? nextUrl});

class BookListView extends StatefulWidget {
  final FetchBooksCallback fetchBooksCallback;

  const BookListView({required this.fetchBooksCallback, super.key});

  @override
  _BookListViewState createState() => _BookListViewState();
}

class _BookListViewState extends State<BookListView> {
  final List<Book> _books = [];
  bool _loading = true;
  String? _nextUrl;

  @override
  void initState() {
    super.initState();
    _fetchBooks();
  }

  Future<void> _fetchBooks() async {
    try {
      while (_nextUrl != null || _books.isEmpty) {
        final result = await widget.fetchBooksCallback(nextUrl: _nextUrl);
        if (mounted) {
          setState(() {
            _books.addAll(result['books']);
            _nextUrl = result['next'];
            _loading = false;
          });
        }
      }
    } catch (e) {
      print('Error: $e');
      if (mounted) {
        setState(() {
          _loading = false;
        });
      }
    }
  }

  @override
  void dispose() {
    // Clean up any resources here if needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _loading
        ? const Center(child: CircularProgressIndicator())
        : Container(
            height: 246.h,
            margin: EdgeInsetsDirectional.fromSTEB(34.w, 0, 0, 24.h),
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                },
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _books.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 153.w,
                    height: 246.h,
                    padding: EdgeInsetsDirectional.only(end: 11.w),
                    child: BookListViewItem(book: _books[index]),
                  );
                },
              ),
            ),
          );
  }
}
