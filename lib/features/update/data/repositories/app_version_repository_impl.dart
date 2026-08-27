import 'package:flutter/material.dart';
import 'package:flutter_riverpod_ca/base/app_error/failure.dart';
import 'package:flutter_riverpod_ca/features/update/data/datasources/app_version_remote_data_source_interface.dart';
import 'package:flutter_riverpod_ca/features/update/data/models/app_version_model.dart';
import 'package:flutter_riverpod_ca/features/update/domain/entities/app_version_entity.dart';
import 'package:flutter_riverpod_ca/features/update/domain/repositories/app_version_repository_interface.dart';
import 'package:fpdart/fpdart.dart';

class AppVersionRepositoryImpl implements AppVersionRepositoryInterface {
  final AppVersionRemoteDataSourceInterface _appVersionRemoteDataSource;

  new({required this._appVersionRemoteDataSource});

  @override
  Future<Either<Failure, AppVersionEntity>> checkForUpdates() async {
    try {
      final appVersionModel = await _appVersionRemoteDataSource.fetchAppVersionInfo();
      return Right(appVersionModel.toEntity());
    } catch (e) {
      debugPrint('⬆️ Update check failed: $e');
      return const Left(ServerFailure());
    }
  }
}
