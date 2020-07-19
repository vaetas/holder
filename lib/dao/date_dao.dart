import 'package:floor/floor.dart' as floor;
import 'package:holder/dao/dao.dart';
import 'package:holder/model/date.dart';
import 'package:holder/util/database.dart';
import 'package:holder/util/locator.dart';

@floor.dao
abstract class DateDao extends Dao<Date> {
  @floor.Query('SELECT * FROM date WHERE id = :id')
  Stream<Date> subscribe(int id);

  @floor.Query('SELECT * FROM date')
  Stream<List<Date>> subscribeAll();

  @floor.Query('SELECT * FROM date WHERE person_id = :personId')
  Stream<List<Date>> subscribeAllForUser(int personId);
}

mixin DateDaoMixin {
  final dateDao = locator<AppDatabase>().dateDao;
}
