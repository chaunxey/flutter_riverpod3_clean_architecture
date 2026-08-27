// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppVersionState {

 CheckUpdateResult get checkUpdateResult; AppVersionEntity? get appVersionEntity;
/// Create a copy of AppVersionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppVersionStateCopyWith<AppVersionState> get copyWith => _$AppVersionStateCopyWithImpl<AppVersionState>(this as AppVersionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppVersionState&&(identical(other.checkUpdateResult, checkUpdateResult) || other.checkUpdateResult == checkUpdateResult)&&(identical(other.appVersionEntity, appVersionEntity) || other.appVersionEntity == appVersionEntity));
}


@override
int get hashCode => Object.hash(runtimeType,checkUpdateResult,appVersionEntity);

@override
String toString() {
  return 'AppVersionState(checkUpdateResult: $checkUpdateResult, appVersionEntity: $appVersionEntity)';
}


}

/// @nodoc
abstract mixin class $AppVersionStateCopyWith<$Res>  {
  factory $AppVersionStateCopyWith(AppVersionState value, $Res Function(AppVersionState) _then) = _$AppVersionStateCopyWithImpl;
@useResult
$Res call({
 CheckUpdateResult checkUpdateResult, AppVersionEntity? appVersionEntity
});




}
/// @nodoc
class _$AppVersionStateCopyWithImpl<$Res>
    implements $AppVersionStateCopyWith<$Res> {
  _$AppVersionStateCopyWithImpl(this._self, this._then);

  final AppVersionState _self;
  final $Res Function(AppVersionState) _then;

/// Create a copy of AppVersionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? checkUpdateResult = null,Object? appVersionEntity = freezed,}) {
  return _then(AppVersionState(
checkUpdateResult: null == checkUpdateResult ? _self.checkUpdateResult : checkUpdateResult // ignore: cast_nullable_to_non_nullable
as CheckUpdateResult,appVersionEntity: freezed == appVersionEntity ? _self.appVersionEntity : appVersionEntity // ignore: cast_nullable_to_non_nullable
as AppVersionEntity?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppVersionState].
extension AppVersionStatePatterns on AppVersionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppVersionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppVersionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppVersionState value)  $default,){
final _that = this;
switch (_that) {
case _AppVersionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppVersionState value)?  $default,){
final _that = this;
switch (_that) {
case _AppVersionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CheckUpdateResult checkUpdateResult,  AppVersionEntity? appVersionEntity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppVersionState() when $default != null:
return $default(_that.checkUpdateResult,_that.appVersionEntity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CheckUpdateResult checkUpdateResult,  AppVersionEntity? appVersionEntity)  $default,) {final _that = this;
switch (_that) {
case _AppVersionState():
return $default(_that.checkUpdateResult,_that.appVersionEntity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CheckUpdateResult checkUpdateResult,  AppVersionEntity? appVersionEntity)?  $default,) {final _that = this;
switch (_that) {
case _AppVersionState() when $default != null:
return $default(_that.checkUpdateResult,_that.appVersionEntity);case _:
  return null;

}
}

}

/// @nodoc


class _AppVersionState implements AppVersionState {
  const _AppVersionState({this.checkUpdateResult = CheckUpdateResult.upToDate, this.appVersionEntity = null});
  

@override@JsonKey() final  CheckUpdateResult checkUpdateResult;
@override@JsonKey() final  AppVersionEntity? appVersionEntity;

/// Create a copy of AppVersionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppVersionStateCopyWith<_AppVersionState> get copyWith => __$AppVersionStateCopyWithImpl<_AppVersionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppVersionState&&(identical(other.checkUpdateResult, checkUpdateResult) || other.checkUpdateResult == checkUpdateResult)&&(identical(other.appVersionEntity, appVersionEntity) || other.appVersionEntity == appVersionEntity));
}


@override
int get hashCode => Object.hash(runtimeType,checkUpdateResult,appVersionEntity);

@override
String toString() {
  return 'AppVersionState(checkUpdateResult: $checkUpdateResult, appVersionEntity: $appVersionEntity)';
}


}

/// @nodoc
abstract mixin class _$AppVersionStateCopyWith<$Res> implements $AppVersionStateCopyWith<$Res> {
  factory _$AppVersionStateCopyWith(_AppVersionState value, $Res Function(_AppVersionState) _then) = __$AppVersionStateCopyWithImpl;
@override @useResult
$Res call({
 CheckUpdateResult checkUpdateResult, AppVersionEntity? appVersionEntity
});




}
/// @nodoc
class __$AppVersionStateCopyWithImpl<$Res>
    implements _$AppVersionStateCopyWith<$Res> {
  __$AppVersionStateCopyWithImpl(this._self, this._then);

  final _AppVersionState _self;
  final $Res Function(_AppVersionState) _then;

/// Create a copy of AppVersionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? checkUpdateResult = null,Object? appVersionEntity = freezed,}) {
  return _then(_AppVersionState(
checkUpdateResult: null == checkUpdateResult ? _self.checkUpdateResult : checkUpdateResult // ignore: cast_nullable_to_non_nullable
as CheckUpdateResult,appVersionEntity: freezed == appVersionEntity ? _self.appVersionEntity : appVersionEntity // ignore: cast_nullable_to_non_nullable
as AppVersionEntity?,
  ));
}


}

// dart format on
