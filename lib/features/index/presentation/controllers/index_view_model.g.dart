// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(IndexViewModel)
final indexViewModelProvider = IndexViewModelProvider._();

final class IndexViewModelProvider
    extends $NotifierProvider<IndexViewModel, IndexState> {
  IndexViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'indexViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$indexViewModelHash();

  @$internal
  @override
  IndexViewModel create() => IndexViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IndexState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IndexState>(value),
    );
  }
}

String _$indexViewModelHash() => r'9b373e7ff1f9ccbd68061dce274211c110f83424';

abstract class _$IndexViewModel extends $Notifier<IndexState> {
  IndexState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<IndexState, IndexState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<IndexState, IndexState>,
              IndexState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
