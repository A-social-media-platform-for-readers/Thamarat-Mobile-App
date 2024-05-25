import 'package:untitled/src/authentication/domain/entities/user.dart';
import 'package:untitled/src/authentication/domain/repositories/auth_repository.dart';

class Register {
  final AuthRepository repository;

  Register(this.repository);

  Future<User> call(User user) {
    return repository.register(user);
  }
}
