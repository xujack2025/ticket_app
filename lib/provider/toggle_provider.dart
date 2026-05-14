import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'toggle_provider.g.dart';

@riverpod
class ToggleProvider extends _$ToggleProvider {
  @override
  bool build() {
    return false;
  }

  void toggleExpansion(bool isExpanded) {
    state = !isExpanded;
  }
}
