import 'package:flutter_riverpod_ca/base/app_error/failure.dart';
import 'package:flutter_riverpod_ca/features/auth/domain/entities/user_entity.dart';
import 'package:flutter_riverpod_ca/features/auth/domain/repositories/auth_repository_interface.dart';
import 'package:fpdart/fpdart.dart';

class RegisterUseCase {
  final AuthRepositoryInterface _authRepository;

  RegisterUseCase(this._authRepository);

  Future<Either<Failure, UserEntity>> execute({
    required String username,
    required String password,
    required String phone,
  }) {
    if (username.isEmpty || password.isEmpty || phone.isEmpty) {
      return Future.value(Left(InputFailure(message: 'Username, password, and phone cannot be empty')));
    }
    return _authRepository.register(username: username, password: password, phone: phone);
  }
}
