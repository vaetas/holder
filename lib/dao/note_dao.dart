import 'package:floor/floor.dart' as floor;
import 'package:holder/dao/dao.dart';
import 'package:holder/model/note.dart';
import 'package:holder/util/database.dart';
import 'package:holder/util/locator.dart';

@floor.dao
abstract class NoteDao extends Dao<Note> {
  @floor.Query('SELECT * FROM note WHERE id = :id')
  Stream<Note> subscribe(int id);

  @floor.Query('SELECT * FROM note')
  Stream<List<Note>> subscribeAll();

  @floor.Query('SELECT * FROM note WHERE person_id = :personId')
  Stream<List<Note>> subscribeAllForUser(int personId);

  @floor.delete
  Future<void> deleteAllForUser(List<Note> notes);
}

mixin NoteDaoMixin {
  final noteDao = locator<AppDatabase>().noteDao;
}
