import 'package:untitled/src/authentication/domain/entities/user.dart';
import 'package:untitled/src/authentication/domain/repositories/auth_repository.dart';

class GetUserById {
  final AuthRepository repository;

  GetUserById(this.repository);

  Future<User> call(int id) {
    return repository.getUserById(id);
  }
}
