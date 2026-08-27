import 'package:flutter_riverpod_ca/features/update/domain/entities/app_version_entity.dart';
import 'package:flutter_riverpod_ca/features/update/domain/entities/check_update_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version_state.freezed.dart';

@freezed
abstract class AppVersionState with _$AppVersionState {
  const factory AppVersionState({
    @Default(CheckUpdateResult.upToDate) CheckUpdateResult checkUpdateResult,
    @Default(null) AppVersionEntity? appVersionEntity,
  }) = _AppVersionState;
}
