import 'package:holder/util/database.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DatabaseModule {
  @singleton
  Future<AppDatabase> get database {
    return $FloorAppDatabase.databaseBuilder('app.db').build();
  }
}
