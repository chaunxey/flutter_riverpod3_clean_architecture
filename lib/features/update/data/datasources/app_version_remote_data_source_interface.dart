import 'package:flutter_riverpod_ca/features/update/data/models/app_version_model.dart';

abstract interface class AppVersionRemoteDataSourceInterface {
  Future<AppVersionModel> fetchAppVersionInfo();
}
