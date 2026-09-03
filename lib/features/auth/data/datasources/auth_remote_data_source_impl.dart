import 'package:flutter/material.dart';
import 'package:flutter_riverpod_ca/base/app_ability/handle_exception_ability.dart';
import 'package:flutter_riverpod_ca/base/app_dio/api_client.dart';
import 'package:flutter_riverpod_ca/features/auth/data/models/user_model.dart';
import 'package:flutter_riverpod_ca/features/auth/data/datasources/auth_remote_data_source_interface.dart';

class AuthRemoteDataSourceImpl with ApiClientAbility implements AuthRemoteDataSourceInterface {
  final ApiClient _apiClient;

  AuthRemoteDataSourceImpl(this._apiClient);

  @override
  Future<UserModel> login({required String username, required String password}) async {
    try {
      final result = await _apiClient.post('/auth/login', data: {'username': username, 'password': password});
      return await result.fold(
        (failure) {
          debugPrint('Login response: $failure');
          final fakeData = UserModel.createFakeData();
          return fakeData;
          // throw ServerException(message: failure.message);
        },
        (data) {
          debugPrint('Login response: $data');
          return UserModel.fromJson(data.data);
        },
      );
    } on Exception catch (e) {
      throw handleException(e);
    }
  }

  @override
  Future<UserModel> register({required String username, required String password, required String phone}) async {
    try {
      final result = await _apiClient.post(
        '/auth/register',
        data: {'username': username, 'password': password, 'phone': phone},
      );
      return await result.fold(
        (failure) {
          debugPrint('Register response: $failure');
          final fakeData = UserModel.createFakeData();
          return fakeData;
          // throw ServerException(message: failure.message);
        },
        (data) {
          return UserModel.fromJson(data.data);
        },
      );
    } on Exception catch (e) {
      throw handleException(e);
    }
  }
}
