import 'package:auth_design/sql_service/sql_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

/// сервис аутентификации пользователя
class AuthService {
  final Dio dio = Dio();
  static const String _baseUrl = 'http://158.160.14.209';

  Future<void> loginUser(String login, String password) async {
    try {
      final response = await dio.post('$_baseUrl/api/v1/auth/login',
          data: {'login': login, 'password': password});
      await SQLService().saveAuthToken(response.data['accessToken']);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

