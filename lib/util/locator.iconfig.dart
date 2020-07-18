// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:holder/util/database.dart';
import 'package:holder/service/database.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final databaseModule = _$DatabaseModule();

  //Eager singletons must be registered in the right order
  g.registerSingletonAsync<AppDatabase>(() => databaseModule.database);
}

class _$DatabaseModule extends DatabaseModule {}
