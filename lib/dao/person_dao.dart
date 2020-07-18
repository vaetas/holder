import 'package:floor/floor.dart' as floor;
import 'package:holder/model/person.dart';

@floor.dao
abstract class PersonDao {
  @floor.Query('SELECT * FROM person')
  Stream<List<Person>> subscribeAll();

  @floor.Query('SELECT * FROM person WHERE id = :id')
  Stream<Person> subscribe(int id);

  @floor.insert
  Future<int> insert(Person person);

  @floor.delete
  Future<void> delete(Person person);

  @floor.update
  Future<void> update(Person person);
}
