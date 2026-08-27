import 'package:flutter_riverpod_ca/base/app_error/failure.dart';
import 'package:flutter_riverpod_ca/features/auth/domain/entities/user_entity.dart';
import 'package:flutter_riverpod_ca/features/auth/domain/repositories/auth_repository_interface.dart';
import 'package:fpdart/fpdart.dart';

class LoginUseCase {
  final AuthRepositoryInterface _authRepository;

  LoginUseCase(this._authRepository);

  Future<Either<Failure, UserEntity>> execute({required String username, required String password}) {
    if (username.isEmpty || password.isEmpty) {
      return Future.value(Left(InputFailure(message: 'Username and password cannot be empty')));
    }
    return _authRepository.login(username: username, password: password);
  }

}
