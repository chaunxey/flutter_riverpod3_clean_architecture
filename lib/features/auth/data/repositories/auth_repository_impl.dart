import 'package:flutter/material.dart';
import 'package:flutter_riverpod_ca/base/app_constants/local_storage_constants.dart';
import 'package:flutter_riverpod_ca/base/app_error/exception.dart';
import 'package:flutter_riverpod_ca/base/app_error/failure.dart';
import 'package:flutter_riverpod_ca/base/app_storage/local_storage_service.dart';
import 'package:flutter_riverpod_ca/base/app_storage/secure_storage_service.dart';
import 'package:flutter_riverpod_ca/features/auth/data/models/user_model.dart';
import 'package:flutter_riverpod_ca/features/auth/domain/entities/user_entity.dart';
import 'package:flutter_riverpod_ca/features/auth/data/datasources/auth_remote_data_source_interface.dart';
import 'package:flutter_riverpod_ca/features/auth/domain/repositories/auth_repository_interface.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepositoryInterface {
  final AuthRemoteDataSourceInterface _authRemoteDataSource;
  final LocalStorageService _localStorageService;
  final SecureStorageService _secureStorageService;

  new({required this._authRemoteDataSource, required this._localStorageService, required this._secureStorageService});

  @override
  Future<Either<Failure, UserEntity>> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntity>> login({required String username, required String password}) async {
    try {
      final userModel = await _authRemoteDataSource.login(username: username, password: password);
      debugPrint('Login response: $userModel');
      // Save user data locally
      await _localStorageService.setObject(key: LocalStorageConstants.userDataKey, value: userModel.toJson());
      // Save auth token securely
      await _secureStorageService.write(key: SecureStorageConstants.tokenKey, value: userModel.id);
      return Right(userModel.toEntity());
    } catch (e) {
      debugPrint('Login error: $e');
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, UserEntity>> register({
    required String username,
    required String password,
    required String phone,
  }) async {
    try {
      final response = await _authRemoteDataSource.register(username: username, password: password, phone: phone);
      // Save user data locally
      await _localStorageService.setObject(key: LocalStorageConstants.userDataKey, value: response.toJson());
      // Save auth token securely
      await _secureStorageService.write(key: SecureStorageConstants.tokenKey, value: response.id);
      return Right(response.toEntity());
    } catch (e) {
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> isLoggedIn() async {
    try {
      final token = await _secureStorageService.read(key: SecureStorageConstants.tokenKey);
      return Right(token != null && token.isNotEmpty);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } catch (e) {
      return const Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await _localStorageService.remove(key: LocalStorageConstants.userDataKey);
      await _secureStorageService.delete(key: LocalStorageConstants.userDataKey);
      return const Right(null);
    } on CacheException catch (e) {
      return Left(CacheFailure(message: e.message));
    } catch (e) {
      return const Left(ServerFailure());
    }
  }
}
