// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppVersionModel _$AppVersionModelFromJson(Map<String, dynamic> json) =>
    _AppVersionModel(
      versionCode: json['versionCode'] as String,
      versionName: json['versionName'] as String,
      downloadUrl: json['downloadUrl'] as String,
      updateLevel: (json['updateLevel'] as num).toInt(),
      updateContent: json['updateContent'] as String,
    );

Map<String, dynamic> _$AppVersionModelToJson(_AppVersionModel instance) =>
    <String, dynamic>{
      'versionCode': instance.versionCode,
      'versionName': instance.versionName,
      'downloadUrl': instance.downloadUrl,
      'updateLevel': instance.updateLevel,
      'updateContent': instance.updateContent,
    };
