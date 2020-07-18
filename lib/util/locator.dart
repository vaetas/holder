import 'package:get_it/get_it.dart';
import 'package:holder/util/database.dart';
import 'package:injectable/injectable.dart';

import 'locator.iconfig.dart';

final locator = GetIt.instance;

@injectableInit
Future<void> setupDependencies() async {
  $initGetIt(locator);
  await locator.isReady<AppDatabase>();
}
