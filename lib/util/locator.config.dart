// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';

import '../service/database.dart';
import 'database.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

void $initGetIt(GetIt g, {String environment}) {
  final gh = GetItHelper(g, environment);
  final databaseModule = _$DatabaseModule();

  // Eager singletons must be registered in the right order
  gh.singletonAsync<AppDatabase>(() => databaseModule.database);
}

class _$DatabaseModule extends DatabaseModule {}
