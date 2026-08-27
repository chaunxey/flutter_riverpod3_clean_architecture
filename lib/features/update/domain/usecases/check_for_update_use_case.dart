import 'package:flutter/material.dart';
import 'package:flutter_riverpod_ca/base/app_error/failure.dart';
import 'package:flutter_riverpod_ca/features/update/domain/entities/app_version_entity.dart';
import 'package:flutter_riverpod_ca/features/update/domain/repositories/app_version_repository_interface.dart';
import 'package:fpdart/fpdart.dart';

class CheckForUpdateUseCase {
  final AppVersionRepositoryInterface _appVersionRepository;

  CheckForUpdateUseCase(this._appVersionRepository);
  // Check for update
  Future<Either<Failure, AppVersionEntity>> execute() {
    return _appVersionRepository.checkForUpdates();
  }

  // Check if an update is available
  bool isUpdateAvailable(String currentVersion, String latestVersion) {
    // Compare semantic versions
    // This is a simplified version that only compares major.minor.patch
    try {
      final current = _parseVersion(currentVersion);
      final latest = _parseVersion(latestVersion);

      // Compare major version
      if (latest[0] > current[0]) return true;
      if (latest[0] < current[0]) return false;

      // Compare minor version
      if (latest[1] > current[1]) return true;
      if (latest[1] < current[1]) return false;

      // Compare patch version
      return latest[2] > current[2];
    } catch (e) {
      debugPrint('⬆️ Version comparison error: $e');
      return false;
    }
  }

  // Helper to parse a version string like "1.2.3" into a list of integers [1, 2, 3]
  List<int> _parseVersion(String version) {
    final parts = version.split('.');

    if (parts.length < 3) {
      // Pad with zeros if fewer than 3 parts
      parts.addAll(List.filled(3 - parts.length, '0'));
    }

    return parts.take(3).map((part) {
      // Remove any non-numeric suffixes
      final match = RegExp(r'^\d+').firstMatch(part);
      final digitPart = match != null ? match.group(0) : '0';
      return int.tryParse(digitPart ?? '0') ?? 0;
    }).toList();
  }
}
