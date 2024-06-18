import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/src/authentication/Data/user_mode.dart';

class AuthService {
  final Dio _dio = Dio();
  static const String baseUrl = 'https://backend-9s26.onrender.com/';

  Future<UserModel> login(String email, String password) async {
    try {
      final response = await _dio.post(
        '$baseUrl/auth/login/',
        data: {
          'email': email,
          'password': password,
        },
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200) {
        // Save JWT to shared preferences
        final prefs = await SharedPreferences.getInstance();
        prefs.setString('jwt', response.data['jwt']);
        // Parse user data and return
        return UserModel.fromJson(response.data['user']);
      } else {
        throw Exception('Failed to login');
      }
    } catch (e) {
      throw Exception('Failed to login: $e');
    }
  }

  Future<void> logout() async {
    try {
      final response = await _dio.post(
        '$baseUrl/auth/logout/',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200) {
        // Remove JWT from shared preferences
        final prefs = await SharedPreferences.getInstance();
        prefs.remove('jwt');
      } else {
        throw Exception('Failed to logout');
      }
    } catch (e) {
      throw Exception('Failed to logout: $e');
    }
  }

  Future<UserModel> register(Map<String, dynamic> userData) async {
    try {
      final response = await _dio.post(
        '$baseUrl/auth/register/',
        data: jsonEncode(userData),
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      if (response.statusCode == 201) {
        return UserModel.fromJson(response.data);
      } else {
        throw Exception('Failed to register');
      }
    } catch (e) {
      throw Exception('Failed to register: $e');
    }
  }
}
