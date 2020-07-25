import 'package:holder/util/database.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @singleton
  @preResolve
  Future<AppDatabase> get database {
    return $FloorAppDatabase.databaseBuilder('app.db').build();
  }

  @preResolve
  Future<SharedPreferences> get preferences => SharedPreferences.getInstance();
}
