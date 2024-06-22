import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/src/core/api_constants.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final Dio _dio = Dio();

  AuthCubit() : super(AuthInitial());

  void loginUser(String email, String password) async {
    emit(AuthLoading());

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
        emit(AuthAuthenticated());
      } else {
        emit(AuthFailure(error: 'Failed to login: ${response.statusMessage}'));
      }
    } catch (e) {
      emit(AuthFailure(error: 'Error occurred while logging in: $e'));
    }
  }

  void checkLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('jwt')) {
      emit(AuthAuthenticated());
    } else {
      emit(AuthNotAuthenticated());
    }
  }
}
