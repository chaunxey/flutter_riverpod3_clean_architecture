// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appVersionRemoteDataSourceImpl)
final appVersionRemoteDataSourceImplProvider =
    AppVersionRemoteDataSourceImplProvider._();

final class AppVersionRemoteDataSourceImplProvider
    extends
        $FunctionalProvider<
          AppVersionRemoteDataSourceImpl,
          AppVersionRemoteDataSourceImpl,
          AppVersionRemoteDataSourceImpl
        >
    with $Provider<AppVersionRemoteDataSourceImpl> {
  AppVersionRemoteDataSourceImplProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appVersionRemoteDataSourceImplProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appVersionRemoteDataSourceImplHash();

  @$internal
  @override
  $ProviderElement<AppVersionRemoteDataSourceImpl> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppVersionRemoteDataSourceImpl create(Ref ref) {
    return appVersionRemoteDataSourceImpl(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppVersionRemoteDataSourceImpl value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppVersionRemoteDataSourceImpl>(
        value,
      ),
    );
  }
}

String _$appVersionRemoteDataSourceImplHash() =>
    r'0b896c2863127168c8f88e7a01821c6020af2f3b';

@ProviderFor(appVersionRepositoryImpl)
final appVersionRepositoryImplProvider = AppVersionRepositoryImplProvider._();

final class AppVersionRepositoryImplProvider
    extends
        $FunctionalProvider<
          AppVersionRepositoryImpl,
          AppVersionRepositoryImpl,
          AppVersionRepositoryImpl
        >
    with $Provider<AppVersionRepositoryImpl> {
  AppVersionRepositoryImplProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appVersionRepositoryImplProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appVersionRepositoryImplHash();

  @$internal
  @override
  $ProviderElement<AppVersionRepositoryImpl> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppVersionRepositoryImpl create(Ref ref) {
    return appVersionRepositoryImpl(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppVersionRepositoryImpl value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppVersionRepositoryImpl>(value),
    );
  }
}

String _$appVersionRepositoryImplHash() =>
    r'3180f1ede190fe5fcedc85784e4f037065bbef70';

@ProviderFor(checkForUpdateUseCase)
final checkForUpdateUseCaseProvider = CheckForUpdateUseCaseProvider._();

final class CheckForUpdateUseCaseProvider
    extends
        $FunctionalProvider<
          CheckForUpdateUseCase,
          CheckForUpdateUseCase,
          CheckForUpdateUseCase
        >
    with $Provider<CheckForUpdateUseCase> {
  CheckForUpdateUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkForUpdateUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkForUpdateUseCaseHash();

  @$internal
  @override
  $ProviderElement<CheckForUpdateUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CheckForUpdateUseCase create(Ref ref) {
    return checkForUpdateUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckForUpdateUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckForUpdateUseCase>(value),
    );
  }
}

String _$checkForUpdateUseCaseHash() =>
    r'ab8c3fe93b2ce4cc7ae27e03d7ba920ea250ad18';
