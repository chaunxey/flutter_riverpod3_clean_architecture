import 'package:freezed_annotation/freezed_annotation.dart';
part 'index_state.freezed.dart';

@freezed
abstract class IndexState with _$IndexState {
  const factory IndexState({@Default(0) int bottomNavIndex}) = _IndexState;
}
