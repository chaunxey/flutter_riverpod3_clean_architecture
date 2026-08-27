import 'package:flutter/material.dart';
import 'package:flutter_riverpod_ca/features/auth/presentation/controllers/auth_state.dart';
import 'package:flutter_riverpod_ca/features/auth/providers/auth_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_view_model.g.dart';

@riverpod
class AuthViewModel extends _$AuthViewModel {
  @override
  AuthState build() {
    return AuthState();
  }

  // check auth status
  Future<void> checkAuthStatus() async {
    state = state.copyWith(isLoading: true);
    (await ref.watch(authRepositoryImplProvider).isLoggedIn()).fold(
      (failure) => state = state.copyWith(isLoading: false, isLogin: false, errorMessage: failure.message, user: null),
      (user) => state = state.copyWith(isLoading: false, isLogin: true, errorMessage: null),
    );
  }

  // login
  Future<void> login({required String username, required String password}) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    final loginCase = ref.watch(loginUseCaseProvider);
    final result = await loginCase.execute(username: username, password: password);
    debugPrint('Login result: $result');
    result.fold(
      (failure) {
        debugPrint('Login failed: $failure');
        state = state.copyWith(isLoading: false, isLogin: false, errorMessage: failure.message, user: null);
      },
      (user) {
        state = state.copyWith(isLoading: false, isLogin: true, errorMessage: null, user: user);
        debugPrint('Login success: $state');
      },
    );
  }

  // register
  Future<void> register({required String username, required String password, required String phone}) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    final registerCase = ref.watch(registerUseCaseProvider);
    final result = await registerCase.execute(username: username, password: password, phone: phone);
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, isLogin: false, errorMessage: failure.message, user: null),
      (user) => state = state.copyWith(isLoading: false, isLogin: true, errorMessage: null, user: user),
    );
  }

  // logout
  Future<void> logout() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    final logoutCase = ref.watch(logoutUseCaseProvider);
    final result = await logoutCase.execute();
    result.fold(
      (failure) => state = state.copyWith(isLoading: false, errorMessage: failure.message),
      (user) => state = state.copyWith(isLoading: false, isLogin: false, errorMessage: null, user: null),
    );
  }
}
