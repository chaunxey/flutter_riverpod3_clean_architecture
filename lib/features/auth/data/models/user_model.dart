// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'package:flutter_riverpod_ca/features/auth/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'dart:convert';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "phone") required String phone,
    @JsonKey(name: "avatar") required String avatar,
    @JsonKey(name: "email") required String email,
    @JsonKey(name: "gender") required int gender,
    @JsonKey(name: "birthday") required String birthday,
    @JsonKey(name: "createdAt") required String createdAt,
    @JsonKey(name: "updatedAt") required String updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

extension UserModelPlus on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      phone: phone,
      avatar: avatar,
      email: email,
      gender: gender,
      birthday: birthday,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
