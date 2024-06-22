import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/src/core/api_constants.dart';
import 'book_model.dart';

class BookService {
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> fetchFreeBooks({String? nextUrl}) {
    return _fetchBooks(nextUrl ?? ApiConstants.freeBooks);
  }

  Future<Map<String, dynamic>> fetchHighRateBooks({String? nextUrl}) {
    return _fetchBooks(nextUrl ?? ApiConstants.highRateBooks);
  }

  Future<Map<String, dynamic>> fetchPopularBooks({String? nextUrl}) {
    return _fetchBooks(nextUrl ?? ApiConstants.popularbooks);
  }

  Future<Map<String, dynamic>> _fetchBooks(String url) async {
    final prefs = await SharedPreferences.getInstance();
    final jwt = prefs.getString('jwt') ?? '';

    try {
      final response = await _dio.get(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': jwt,
          },
        ),
      );

      if (response.statusCode == 200) {
        final List<dynamic> results = response.data['results'];
        final String? next = response.data['next'];
        return {
          'books': results.map((json) => Book.fromJson(json)).toList(),
          'next': next,
        };
      } else {
        throw Exception('Failed to load free books');
      }
    } on DioException catch (e) {
      print('Error: ${e.message}');
      rethrow;
    }
  }
}
