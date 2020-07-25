// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:injectable/get_it_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../service/authentication_service.dart';
import '../service/module.dart';
import '../service/preferences_service.dart';
import 'database.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final gh = GetItHelper(g, environment);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<AuthenticationService>(() => AuthenticationService());
  gh.lazySingleton<PreferencesService>(() => PreferencesService());
  final sharedPreferences = await registerModule.preferences;
  gh.factory<SharedPreferences>(() => sharedPreferences);

  // Eager singletons must be registered in the right order
  final appDatabase = await registerModule.database;
  gh.singleton<AppDatabase>(appDatabase);
}

class _$RegisterModule extends RegisterModule {}
