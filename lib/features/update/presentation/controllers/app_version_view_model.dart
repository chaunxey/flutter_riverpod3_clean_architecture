import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod_ca/base/app_constants/local_storage_constants.dart';
import 'package:flutter_riverpod_ca/features/update/domain/entities/app_version_entity.dart';
import 'package:flutter_riverpod_ca/features/update/domain/entities/check_update_result.dart';
import 'package:flutter_riverpod_ca/features/update/presentation/controllers/app_version_state.dart';
import 'package:flutter_riverpod_ca/features/update/providers/app_version_providers.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'app_version_view_model.g.dart';

@riverpod
class AppVersionViewModel extends _$AppVersionViewModel {
  @override
  AppVersionState build() {
    return AppVersionState(checkUpdateResult: CheckUpdateResult.upToDate);
  }

  /// 检查更新
  Future<void> checkForUpdates() async {
    try {
      final packageInfo = await PackageInfo.fromPlatform();
      final checkForUpdateCase = ref.read(checkForUpdateUseCaseProvider);
      final result = await checkForUpdateCase.execute();
      result.fold((failure) => state = state.copyWith(checkUpdateResult: CheckUpdateResult.checkFailed), (
        appVersionEntity,
      ) {
        CheckUpdateResult res;
        debugPrint('isUpdateAvailable: ${packageInfo.version} ==> ${appVersionEntity.versionName}');
        if (checkForUpdateCase.isUpdateAvailable(packageInfo.version, appVersionEntity.versionName)) {
          res = appVersionEntity.updateLevel == 0
              ? CheckUpdateResult.criticalUpdateRequired
              : CheckUpdateResult.updateAvailable;
        } else {
          res = CheckUpdateResult.upToDate;
        }
        state = state.copyWith(appVersionEntity: appVersionEntity, checkUpdateResult: res);
        debugPrint('checkUpdateResult: ${state.checkUpdateResult}');
      });
    } catch (e) {
      debugPrint('Failed to check for updates: $e');
      state = state.copyWith(checkUpdateResult: CheckUpdateResult.checkFailed);
    }
  }

  /// 获取当前版本信息
  Future<AppVersionEntity?> getAppVersionEntity() async {
    debugPrint('getAppVersionEntity: ${state.appVersionEntity}');
    if (state.appVersionEntity == null) {
      await checkForUpdates();
    }
    return state.appVersionEntity;
  }

  /// 打开更新页面
  Future<bool> openUpdateUrl() async {
    try {
      final appVersionEntity = await getAppVersionEntity();
      if (appVersionEntity?.downloadUrl != null) {
        // Launch the update URL if available
        return await _launchUrl(appVersionEntity!.downloadUrl);
      }

      // Fall back to store URL based on platform
      String url;
      if (Platform.isAndroid) {
        url = 'https://play.google.com/store/apps/details?id=${AppConfigConstants.androidPackageName}';
      } else if (Platform.isIOS) {
        url = 'https://apps.apple.com/app/id${AppConfigConstants.iOSAppId}';
      } else {
        return false;
      }

      return await _launchUrl(url);
    } catch (e) {
      debugPrint('⬆️ Failed to open update URL: $e');
      return false;
    }
  }

  /// Launch the given URL
  Future<bool> _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      return await launchUrl(Uri.parse(url));
    }
    return false;
  }
}
