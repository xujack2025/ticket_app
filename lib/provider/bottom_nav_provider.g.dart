// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_nav_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BottomNavProvider)
final bottomNavProviderProvider = BottomNavProviderProvider._();

final class BottomNavProviderProvider
    extends $NotifierProvider<BottomNavProvider, int> {
  BottomNavProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bottomNavProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bottomNavProviderHash();

  @$internal
  @override
  BottomNavProvider create() => BottomNavProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$bottomNavProviderHash() => r'2ed86dc7cfe46ac2693cfa644e93bb1d6f95e6ad';

abstract class _$BottomNavProvider extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
