import 'package:holder/util/locator.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class PreferencesService {
  final stream = BehaviorSubject<PreferencesService>();

  PreferencesService() {
    stream.add(this);
  }

  final _instance = locator<SharedPreferences>();

  List<String> getKeys() => _instance.getKeys().toList();

  Future<void> setBool(String key, bool value) async {
    await _instance.setBool(key, value);
    stream.add(this);
  }

  bool getBool(String key, {bool ifNull = false}) =>
      _instance.getBool(key) ?? ifNull;
}

class Preferences {
  static const authentication = 'authentication';
}
