abstract class DataStorageService<T> {
  Future<DataStorageService> initialize();
  Future<DataStorageService> close();
  T getInstance();
  Future<void> put(Object model);
  Future<Object?> get(int id);
  Future<void> delete();
}
