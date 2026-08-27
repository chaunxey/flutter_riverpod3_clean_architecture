// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppVersionViewModel)
final appVersionViewModelProvider = AppVersionViewModelProvider._();

final class AppVersionViewModelProvider
    extends $NotifierProvider<AppVersionViewModel, AppVersionState> {
  AppVersionViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appVersionViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appVersionViewModelHash();

  @$internal
  @override
  AppVersionViewModel create() => AppVersionViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppVersionState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppVersionState>(value),
    );
  }
}

String _$appVersionViewModelHash() =>
    r'435c9494fe4e9b01157c64579367f388a330903a';

abstract class _$AppVersionViewModel extends $Notifier<AppVersionState> {
  AppVersionState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AppVersionState, AppVersionState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppVersionState, AppVersionState>,
              AppVersionState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
