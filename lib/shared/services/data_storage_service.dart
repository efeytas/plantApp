abstract class DataStorageService {
  Future<bool> isFirstTime();
  Future<void> setFirstTimeFalse();
  Future<void> resetFirstTime();
}