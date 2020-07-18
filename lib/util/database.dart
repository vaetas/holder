import 'dart:async';

import 'package:floor/floor.dart';
import 'package:holder/dao/person_dao.dart';
import 'package:holder/model/person.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [Person])
abstract class AppDatabase extends FloorDatabase {
  PersonDao get personDao;
}

Future<AppDatabase> setupDatabase() async {
  return await $FloorAppDatabase.databaseBuilder('app.db').build();
}
