// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String,
  avatar: json['avatar'] as String,
  email: json['email'] as String,
  gender: (json['gender'] as num).toInt(),
  birthday: json['birthday'] as String,
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'email': instance.email,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
