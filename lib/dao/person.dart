import 'package:floor/floor.dart';
import 'package:holder/model/person.dart';

@dao
abstract class PersonDao {
  @Query('SELECT * FROM person')
  Stream<List<Person>> getAll();

  @insert
  Future<int> add(Person person);

  @delete
  Future<void> remove(Person person);
}
