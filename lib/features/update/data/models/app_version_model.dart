// To parse this JSON data, do
//
//     final appVersionModel = appVersionModelFromJson(jsonString);

import 'package:flutter_riverpod_ca/features/update/domain/entities/app_version_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';

part 'app_version_model.freezed.dart';
part 'app_version_model.g.dart';

AppVersionModel appVersionModelFromJson(String str) => AppVersionModel.fromJson(json.decode(str));

String appVersionModelToJson(AppVersionModel data) => json.encode(data.toJson());

@freezed
abstract class AppVersionModel with _$AppVersionModel {
  const factory AppVersionModel({
    @JsonKey(name: "versionCode") required String versionCode,
    @JsonKey(name: "versionName") required String versionName,
    @JsonKey(name: "downloadUrl") required String downloadUrl,
    @JsonKey(name: "updateLevel") required int updateLevel,
    @JsonKey(name: "updateContent") required String updateContent,
  }) = _AppVersionModel;

  factory AppVersionModel.fromJson(Map<String, dynamic> json) => _$AppVersionModelFromJson(json);

  factory AppVersionModel.createFakeData() => AppVersionModel(
    versionCode: '200',
    versionName: '2.0.0',
    updateContent: 'This is a fake app version',
    downloadUrl: 'https://www.baidu.com',
    updateLevel: 1,
  );
}

extension AppVersionModelPlus on AppVersionModel {
  AppVersionEntity toEntity() {
    return AppVersionEntity(
      versionCode: versionCode,
      versionName: versionName,
      downloadUrl: downloadUrl,
      updateLevel: updateLevel,
      updateContent: updateContent,
    );
  }
}
