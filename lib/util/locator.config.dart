// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'database.dart';
import '../service/authentication_service.dart';
import '../service/preferences_service.dart';
import '../service/module.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<AuthenticationService>(() => AuthenticationService());
  gh.lazySingleton<PreferencesService>(() => PreferencesService());
  final sharedPreferences = await registerModule.preferences;
  gh.factory<SharedPreferences>(() => sharedPreferences);

  // Eager singletons must be registered in the right order
  final appDatabase = await registerModule.database;
  gh.singleton<AppDatabase>(appDatabase);
  return get;
}

class _$RegisterModule extends RegisterModule {}
