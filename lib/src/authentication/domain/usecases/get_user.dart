import 'package:untitled/src/authentication/domain/entities/user.dart';
import 'package:untitled/src/authentication/domain/repositories/auth_repository.dart';

class GetUser {
  final AuthRepository repository;

  GetUser(this.repository);

  Future<User> call() {
    return repository.getUser();
  }
}
