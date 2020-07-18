import 'package:floor/floor.dart' as floor;

abstract class Dao<T> {
  @floor.insert
  Future<int> insert(T object);

  @floor.delete
  Future<void> delete(T object);

  @floor.update
  Future<void> update(T object);
}
