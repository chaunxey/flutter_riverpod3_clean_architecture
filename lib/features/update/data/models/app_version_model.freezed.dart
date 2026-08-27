// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppVersionModel {

@JsonKey(name: "versionCode") String get versionCode;@JsonKey(name: "versionName") String get versionName;@JsonKey(name: "downloadUrl") String get downloadUrl;@JsonKey(name: "updateLevel") int get updateLevel;@JsonKey(name: "updateContent") String get updateContent;
/// Create a copy of AppVersionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppVersionModelCopyWith<AppVersionModel> get copyWith => _$AppVersionModelCopyWithImpl<AppVersionModel>(this as AppVersionModel, _$identity);

  /// Serializes this AppVersionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppVersionModel&&(identical(other.versionCode, versionCode) || other.versionCode == versionCode)&&(identical(other.versionName, versionName) || other.versionName == versionName)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl)&&(identical(other.updateLevel, updateLevel) || other.updateLevel == updateLevel)&&(identical(other.updateContent, updateContent) || other.updateContent == updateContent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,versionCode,versionName,downloadUrl,updateLevel,updateContent);

@override
String toString() {
  return 'AppVersionModel(versionCode: $versionCode, versionName: $versionName, downloadUrl: $downloadUrl, updateLevel: $updateLevel, updateContent: $updateContent)';
}


}

/// @nodoc
abstract mixin class $AppVersionModelCopyWith<$Res>  {
  factory $AppVersionModelCopyWith(AppVersionModel value, $Res Function(AppVersionModel) _then) = _$AppVersionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "versionCode") String versionCode,@JsonKey(name: "versionName") String versionName,@JsonKey(name: "downloadUrl") String downloadUrl,@JsonKey(name: "updateLevel") int updateLevel,@JsonKey(name: "updateContent") String updateContent
});




}
/// @nodoc
class _$AppVersionModelCopyWithImpl<$Res>
    implements $AppVersionModelCopyWith<$Res> {
  _$AppVersionModelCopyWithImpl(this._self, this._then);

  final AppVersionModel _self;
  final $Res Function(AppVersionModel) _then;

/// Create a copy of AppVersionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? versionCode = null,Object? versionName = null,Object? downloadUrl = null,Object? updateLevel = null,Object? updateContent = null,}) {
  return _then(AppVersionModel(
versionCode: null == versionCode ? _self.versionCode : versionCode // ignore: cast_nullable_to_non_nullable
as String,versionName: null == versionName ? _self.versionName : versionName // ignore: cast_nullable_to_non_nullable
as String,downloadUrl: null == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String,updateLevel: null == updateLevel ? _self.updateLevel : updateLevel // ignore: cast_nullable_to_non_nullable
as int,updateContent: null == updateContent ? _self.updateContent : updateContent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AppVersionModel].
extension AppVersionModelPatterns on AppVersionModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppVersionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppVersionModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppVersionModel value)  $default,){
final _that = this;
switch (_that) {
case _AppVersionModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppVersionModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppVersionModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "versionCode")  String versionCode, @JsonKey(name: "versionName")  String versionName, @JsonKey(name: "downloadUrl")  String downloadUrl, @JsonKey(name: "updateLevel")  int updateLevel, @JsonKey(name: "updateContent")  String updateContent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppVersionModel() when $default != null:
return $default(_that.versionCode,_that.versionName,_that.downloadUrl,_that.updateLevel,_that.updateContent);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "versionCode")  String versionCode, @JsonKey(name: "versionName")  String versionName, @JsonKey(name: "downloadUrl")  String downloadUrl, @JsonKey(name: "updateLevel")  int updateLevel, @JsonKey(name: "updateContent")  String updateContent)  $default,) {final _that = this;
switch (_that) {
case _AppVersionModel():
return $default(_that.versionCode,_that.versionName,_that.downloadUrl,_that.updateLevel,_that.updateContent);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "versionCode")  String versionCode, @JsonKey(name: "versionName")  String versionName, @JsonKey(name: "downloadUrl")  String downloadUrl, @JsonKey(name: "updateLevel")  int updateLevel, @JsonKey(name: "updateContent")  String updateContent)?  $default,) {final _that = this;
switch (_that) {
case _AppVersionModel() when $default != null:
return $default(_that.versionCode,_that.versionName,_that.downloadUrl,_that.updateLevel,_that.updateContent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppVersionModel implements AppVersionModel {
  const _AppVersionModel({@JsonKey(name: "versionCode") required this.versionCode, @JsonKey(name: "versionName") required this.versionName, @JsonKey(name: "downloadUrl") required this.downloadUrl, @JsonKey(name: "updateLevel") required this.updateLevel, @JsonKey(name: "updateContent") required this.updateContent});
  factory _AppVersionModel.fromJson(Map<String, dynamic> json) => _$AppVersionModelFromJson(json);

@override@JsonKey(name: "versionCode") final  String versionCode;
@override@JsonKey(name: "versionName") final  String versionName;
@override@JsonKey(name: "downloadUrl") final  String downloadUrl;
@override@JsonKey(name: "updateLevel") final  int updateLevel;
@override@JsonKey(name: "updateContent") final  String updateContent;

/// Create a copy of AppVersionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppVersionModelCopyWith<_AppVersionModel> get copyWith => __$AppVersionModelCopyWithImpl<_AppVersionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppVersionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppVersionModel&&(identical(other.versionCode, versionCode) || other.versionCode == versionCode)&&(identical(other.versionName, versionName) || other.versionName == versionName)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl)&&(identical(other.updateLevel, updateLevel) || other.updateLevel == updateLevel)&&(identical(other.updateContent, updateContent) || other.updateContent == updateContent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,versionCode,versionName,downloadUrl,updateLevel,updateContent);

@override
String toString() {
  return 'AppVersionModel(versionCode: $versionCode, versionName: $versionName, downloadUrl: $downloadUrl, updateLevel: $updateLevel, updateContent: $updateContent)';
}


}

/// @nodoc
abstract mixin class _$AppVersionModelCopyWith<$Res> implements $AppVersionModelCopyWith<$Res> {
  factory _$AppVersionModelCopyWith(_AppVersionModel value, $Res Function(_AppVersionModel) _then) = __$AppVersionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "versionCode") String versionCode,@JsonKey(name: "versionName") String versionName,@JsonKey(name: "downloadUrl") String downloadUrl,@JsonKey(name: "updateLevel") int updateLevel,@JsonKey(name: "updateContent") String updateContent
});




}
/// @nodoc
class __$AppVersionModelCopyWithImpl<$Res>
    implements _$AppVersionModelCopyWith<$Res> {
  __$AppVersionModelCopyWithImpl(this._self, this._then);

  final _AppVersionModel _self;
  final $Res Function(_AppVersionModel) _then;

/// Create a copy of AppVersionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? versionCode = null,Object? versionName = null,Object? downloadUrl = null,Object? updateLevel = null,Object? updateContent = null,}) {
  return _then(_AppVersionModel(
versionCode: null == versionCode ? _self.versionCode : versionCode // ignore: cast_nullable_to_non_nullable
as String,versionName: null == versionName ? _self.versionName : versionName // ignore: cast_nullable_to_non_nullable
as String,downloadUrl: null == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String,updateLevel: null == updateLevel ? _self.updateLevel : updateLevel // ignore: cast_nullable_to_non_nullable
as int,updateContent: null == updateContent ? _self.updateContent : updateContent // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
