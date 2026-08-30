import 'package:flutter_riverpod_ca/features/index/presentation/controllers/index_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'index_view_model.g.dart';

@riverpod
class IndexViewModel extends _$IndexViewModel {
  @override
  IndexState build() => IndexState();

  void updateIndex(int index) {
    state = state.copyWith(bottomNavIndex: index);
  }
}
