import 'package:flutter_riverpod_ca/base/app_error/failure.dart';
import 'package:flutter_riverpod_ca/features/auth/domain/repositories/auth_repository_interface.dart';
import 'package:fpdart/fpdart.dart';

class LogoutUseCase {
  final AuthRepositoryInterface _authRepository;

  LogoutUseCase(this._authRepository);

  Future<Either<Failure, void>> execute() async {
    return await _authRepository.logout();
  }
}
