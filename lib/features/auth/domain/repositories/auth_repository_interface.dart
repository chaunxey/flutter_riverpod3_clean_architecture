import 'package:flutter_riverpod_ca/base/app_error/failure.dart';
import 'package:flutter_riverpod_ca/features/auth/domain/entities/user_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepositoryInterface {
  // Login method
  Future<Either<Failure, UserEntity>> login({required String username, required String password});

  // Register method
  Future<Either<Failure, UserEntity>> register({
    required String username,
    required String password,
    required String phone,
  });

  // Get the current user
  Future<Either<Failure, UserEntity>> getCurrentUser();

  // Logout method
  Future<Either<Failure, void>> logout();

  // Check if the user is logged in
  Future<Either<Failure, bool>> isLoggedIn();
}
