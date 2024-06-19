abstract class ApiConstants {
  //  Base Url
  static const String baseUrl = 'https://backend-9s26.onrender.com/';

  //  Auth Endpoints
  static const String login = '${baseUrl}auth/login';
  static const String register = '${baseUrl}auth/register';
  static const String logout = '${baseUrl}auth/logout';
  static const String user = '${baseUrl}auth/user';

  // Books Endpoints
  static const String popularBooks = '${baseUrl}books/popular-books';
}
