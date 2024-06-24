import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/src/Book%20management/Data/review_model.dart';
import 'package:untitled/src/core/api_constants.dart';

class ReviewService {
  final Dio _dio = Dio();

  Future<Review> fetchReview(int reviewId, int bookId) async {
    final prefs = await SharedPreferences.getInstance();
    final jwt = prefs.getString('jwt') ?? '';

    final String url = '${ApiConstants}books/review/$reviewId/$bookId/';

    try {
      final response = await _dio.get(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer $jwt',
          },
        ),
      );

      if (response.statusCode == 200) {
        return Review.fromJson(response.data);
      } else {
        throw Exception('Failed to load review');
      }
    } on DioException catch (e) {
      print('Error: ${e.message}');
      rethrow;
    }
  }
}
