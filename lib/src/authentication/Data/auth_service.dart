import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/src/authentication/Data/user_mode.dart';

class AuthService {
  final Dio _dio = Dio();

  Future<bool> registerUser(User user) async {
    const String url = 'https://backend-9s26.onrender.com/auth/register/';

    try {
      final response = await _dio.post(
        url,
        data: user.toJson(),
        options: Options(headers: {
          'Content-Type': 'application/json',
        }),
      );

      if (response.statusCode == 201) {
        print('User registered successfully');
        return true;
      } else {
        print('Failed to register user: ${response.statusMessage}');
        return false;
      }
    } on DioException catch (e) {
      if (e.response != null) {
        print('DioException: ${e.response?.data}');
        print('DioException: ${e.response?.headers}');
        print('DioException: ${e.response?.requestOptions}');
      } else {
        print('DioException: ${e.message}');
      }
      return false;
    } catch (e) {
      print('Error occurred while registering user: $e');
      return false;
    }
  }

  Future<bool> loginUser(String email, String password) async {
    const String url = 'https://backend-9s26.onrender.com/auth/login/';

    try {
      final response = await _dio.post(
        url,
        data: {
          'email': email,
          'password': password,
        },
        options: Options(headers: {
          'Content-Type': 'application/json',
        }),
      );

      if (response.statusCode == 200) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('jwt', response.data['jwt']);
        print('User logged in successfully');
        return true;
      } else {
        print('Failed to login: ${response.statusMessage}');
        return false;
      }
    } on DioException catch (e) {
      if (e.response != null) {
        print('DioException: ${e.response?.data}');
        print('DioException: ${e.response?.headers}');
        print('DioException: ${e.response?.requestOptions}');
      } else {
        print('DioException: ${e.message}');
      }
      return false;
    } catch (e) {
      print('Error occurred while logging in: $e');
      return false;
    }
  }
}
