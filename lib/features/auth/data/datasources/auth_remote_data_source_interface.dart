import 'package:flutter_riverpod_ca/features/auth/data/models/user_model.dart';

abstract interface class AuthRemoteDataSourceInterface {
  // Login method
  Future<UserModel> login({required String username, required String password});
  // Register method
  Future<UserModel> register({required String username, required String password, required String phone});
}
