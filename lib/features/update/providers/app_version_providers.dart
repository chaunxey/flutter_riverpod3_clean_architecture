import 'package:flutter/material.dart';
import 'package:flutter_riverpod_ca/base/app_providers/api_client_provider.dart';
import 'package:flutter_riverpod_ca/features/update/data/datasources/app_version_remote_data_source_impl.dart';
import 'package:flutter_riverpod_ca/features/update/data/repositories/app_version_repository_impl.dart';
import 'package:flutter_riverpod_ca/features/update/domain/usecases/check_for_update_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_version_providers.g.dart';

@riverpod
AppVersionRemoteDataSourceImpl appVersionRemoteDataSourceImpl(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return AppVersionRemoteDataSourceImpl(apiClient);
}

@riverpod
AppVersionRepositoryImpl appVersionRepositoryImpl(Ref ref) {
  ref.onDispose(() {
    // dispose
    debugPrint('dispose appVersionRepositoryImpl');
  });
  final appVersionRemoteDataSource = ref.watch(appVersionRemoteDataSourceImplProvider);
  return AppVersionRepositoryImpl(appVersionRemoteDataSource: appVersionRemoteDataSource);
}

// UseCase
@riverpod
CheckForUpdateUseCase checkForUpdateUseCase(Ref ref) {
  final appVersionRepository = ref.watch(appVersionRepositoryImplProvider);
  return CheckForUpdateUseCase(appVersionRepository);
}
