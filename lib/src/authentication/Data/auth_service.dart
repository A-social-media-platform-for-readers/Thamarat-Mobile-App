import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/src/authentication/Data/user_mode.dart';
import 'package:untitled/src/core/api_constants.dart';

class AuthService {
  final Dio _dio = Dio();

  Future<bool> registerUser(User user) async {
    try {
      final response = await _dio.post(
        ApiConstants.register,
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
    } catch (e) {
      print('Error occurred while registering user: $e');
      return false;
    }
  }

  Future<bool> loginUser(String email, String password) async {
    try {
      final response = await _dio.post(
        ApiConstants.login,
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
    } catch (e) {
      print('Error occurred while logging in: $e');
      return false;
    }
  }

  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('jwt');
  }
}
