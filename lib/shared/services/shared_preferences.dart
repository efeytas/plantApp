import 'package:injectable/injectable.dart';
import 'package:plantapp/shared/services/data_storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: DataStorageService)
class PreferencesService implements DataStorageService {
  static const _keyIsFirstTime = 'is_first_time';

@override
  Future<bool> isFirstTime() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyIsFirstTime) ?? true;
  }
@override

  Future<void> setFirstTimeFalse() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyIsFirstTime, false);
  }
@override
  Future<void> resetFirstTime() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyIsFirstTime);
  }
}