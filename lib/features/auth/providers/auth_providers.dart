import 'package:flutter_riverpod_ca/base/app_providers/api_client_provider.dart';
import 'package:flutter_riverpod_ca/base/app_providers/local_storage_provider.dart';
import 'package:flutter_riverpod_ca/base/app_providers/secure_storage_provider.dart';
import 'package:flutter_riverpod_ca/features/auth/data/datasources/auth_remote_data_source_impl.dart';
import 'package:flutter_riverpod_ca/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:flutter_riverpod_ca/features/auth/domain/usecases/login_use_case.dart';
import 'package:flutter_riverpod_ca/features/auth/domain/usecases/logout_use_case.dart';
import 'package:flutter_riverpod_ca/features/auth/domain/usecases/register_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.g.dart';

@Riverpod(keepAlive: true)
AuthRemoteDataSourceImpl authRemoteDataSourceImpl(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return AuthRemoteDataSourceImpl(apiClient);
}

@Riverpod(keepAlive: true)
AuthRepositoryImpl authRepositoryImpl(Ref ref) {
  return AuthRepositoryImpl(
    authRemoteDataSource: ref.watch(authRemoteDataSourceImplProvider),
    localStorageService: ref.watch(localStorageServiceProvider),
    secureStorageService: ref.watch(secureStorageServiceProvider),
  );
}

@Riverpod(keepAlive: true)
LoginUseCase loginUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryImplProvider);
  return LoginUseCase(authRepository);
}

@Riverpod(keepAlive: true)
LogoutUseCase logoutUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryImplProvider);
  return LogoutUseCase(authRepository);
}

@Riverpod(keepAlive: true)
RegisterUseCase registerUseCase(Ref ref) {
  final authRepository = ref.watch(authRepositoryImplProvider);
  return RegisterUseCase(authRepository);
}
