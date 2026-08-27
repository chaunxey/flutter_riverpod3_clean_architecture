import 'package:equatable/equatable.dart';

class AppVersionEntity extends Equatable {
  // 版本号
  final String versionCode;
  // 版本名称
  final String versionName;
  // 下载地址
  final String downloadUrl;
  // 0: 强制更新 1: 提醒更新
  final int updateLevel;
  // 更新内容
  final String? updateContent;

  const AppVersionEntity({
    required this.versionCode,
    required this.versionName,
    required this.downloadUrl,
    this.updateLevel = 0,
    this.updateContent,
  });

  @override
  List<Object?> get props => [versionCode, versionName, downloadUrl, updateLevel, updateContent];
}
