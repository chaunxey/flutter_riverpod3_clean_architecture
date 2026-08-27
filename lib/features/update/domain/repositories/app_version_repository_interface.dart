import 'package:flutter_riverpod_ca/base/app_error/failure.dart';
import 'package:flutter_riverpod_ca/features/update/domain/entities/app_version_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AppVersionRepositoryInterface {
  // Get the latest app version
  Future<Either<Failure,AppVersionEntity>> checkForUpdates();
}
