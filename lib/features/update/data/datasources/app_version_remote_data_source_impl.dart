import 'package:flutter_riverpod_ca/base/app_ability/handle_exception_ability.dart';
import 'package:flutter_riverpod_ca/base/app_dio/api_client.dart';
import 'package:flutter_riverpod_ca/base/app_error/exception.dart';
import 'package:flutter_riverpod_ca/features/update/data/datasources/app_version_remote_data_source_interface.dart';
import 'package:flutter_riverpod_ca/features/update/data/models/app_version_model.dart';

class AppVersionRemoteDataSourceImpl with ApiClientAbility implements AppVersionRemoteDataSourceInterface {
  final ApiClient _apiClient;
  AppVersionRemoteDataSourceImpl(this._apiClient);

  @override
  Future<AppVersionModel> fetchAppVersionInfo() async {
    try {
      final result = await _apiClient.get('/update/appversion', queryParameters: {'platform': '0'});
      return await result.fold(
        (failure) {
          throw ServerException(message: failure.message);
        },
        (data) {
          return AppVersionModel.fromJson(data.data);
        },
      );
    } on Exception catch (e) {
      throw handleException(e);
    }
  }
}
