import 'package:floor/floor.dart' as floor;
import 'package:holder/dao/dao.dart';
import 'package:holder/model/person.dart';

@floor.dao
abstract class PersonDao implements Dao<Person> {
  @floor.Query('SELECT * FROM person WHERE id = :id')
  Stream<Person> subscribe(int id);

  @floor.Query('SELECT * FROM person')
  Stream<List<Person>> subscribeAll();
}
