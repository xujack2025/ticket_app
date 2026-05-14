// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggle_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ToggleProvider)
final toggleProviderProvider = ToggleProviderProvider._();

final class ToggleProviderProvider
    extends $NotifierProvider<ToggleProvider, bool> {
  ToggleProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'toggleProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$toggleProviderHash();

  @$internal
  @override
  ToggleProvider create() => ToggleProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$toggleProviderHash() => r'9eb5c2c56f178753b87cc707fbfb0dfe0170d188';

abstract class _$ToggleProvider extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
