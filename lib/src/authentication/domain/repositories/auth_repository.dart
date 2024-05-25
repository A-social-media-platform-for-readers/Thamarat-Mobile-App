import 'package:untitled/src/authentication/domain/entities/user.dart';

abstract class AuthRepository {
  Future<User> login(String email, String password);
  Future<void> logout();
  Future<User> register(User user);
  Future<User> getUser();
  Future<User> getUserById(int id);
}
