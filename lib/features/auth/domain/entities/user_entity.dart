import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String name;
  final String phone;
  final String? avatar;
  final String? email;
  final int? gender;
  final String? birthday;
  final String? createdAt;
  final String? updatedAt;

  // Constructor
  const UserEntity({
    required this.id,
    required this.name,
    required this.phone,
    this.avatar,
    this.email,
    this.gender,
    this.birthday,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [id, name, phone, avatar, email, gender, birthday, createdAt, updatedAt];

  //create empty user entity
  factory UserEntity.empty() => UserEntity(
    id: '',
    name: '',
    phone: '',
    avatar: null,
    email: null,
    gender: null,
    birthday: null,
    createdAt: null,
    updatedAt: null,
  );

  //copy with for creating a new instance with updated values
  UserEntity copyWith({
    String? id,
    String? name,
    String? phone,
    String? avatar,
    String? email,
    int? gender,
    String? birthday,
    String? createdAt,
    String? updatedAt,
  }) => UserEntity(
    id: id ?? this.id,
    name: name ?? this.name,
    phone: phone ?? this.phone,
    avatar: avatar ?? this.avatar,
    email: email ?? this.email,
    gender: gender ?? this.gender,
    birthday: birthday ?? this.birthday,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );

  //method to check if the user is empty
  bool get isEmpty => id.isEmpty && name.isEmpty && phone.isEmpty;
  bool get isNotEmpty => !isEmpty;
}
