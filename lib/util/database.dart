import 'dart:async';

import 'package:floor/floor.dart';
import 'package:holder/dao/date_dao.dart';
import 'package:holder/dao/note_dao.dart';
import 'package:holder/dao/person_dao.dart';
import 'package:holder/model/date.dart';
import 'package:holder/model/note.dart';
import 'package:holder/model/person.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [Person, Note, Date])
abstract class AppDatabase extends FloorDatabase {
  PersonDao get personDao;

  NoteDao get noteDao;

  DateDao get dateDao;
}

Future<AppDatabase> setupDatabase() async {
  return await $FloorAppDatabase.databaseBuilder('app.db').build();
}
