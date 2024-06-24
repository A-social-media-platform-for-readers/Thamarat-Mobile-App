import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/src/social%20media/Data/post_model.dart';

class PostService {
  final Dio _dio = Dio();

  Future<List<Post>> fetchPosts(int page) async {
    final prefs = await SharedPreferences.getInstance();
    final jwt = prefs.getString('jwt') ?? '';
    try {
      final response = await _dio.get(
        'https://api.example.org/social-media/posts/',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
            'Authorization': '$jwt',
          },
        ),
        queryParameters: {
          'page': page,
        },
      );

      if (response.statusCode == 200) {
        final List<Post> posts = (response.data['results'] as List)
            .map((post) => Post.fromJson(post))
            .toList();
        return posts;
      } else {
        print('Failed to load posts: ${response.statusMessage}');
        return [];
      }
    } catch (e) {
      print('Error occurred while fetching posts: $e');
      return [];
    }
  }

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('jwt');
  }
}
