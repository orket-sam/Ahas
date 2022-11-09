import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prefs_app/preferences.dart';

class Counter extends StateNotifier<int> {
  static int count = UserPreferences.getCounterValue() ?? 0;
  Counter() : super(count);

  void increment() {
    state++;

    UserPreferences.setCounterValue(state);
  }

  void reset() {
    state = 0;
    UserPreferences.resetCounterValue();
  }
}
