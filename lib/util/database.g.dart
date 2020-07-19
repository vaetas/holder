// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String name;

  final List<Migration> _migrations = [];

  Callback _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String> listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  PersonDao _personDaoInstance;

  NoteDao _noteDaoInstance;

  DateDao _dateDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `person` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `first_name` TEXT, `last_name` TEXT, `description` TEXT)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `note` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `person_id` INTEGER, `content` TEXT, FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION)');
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `date` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `person_id` INTEGER, `date` TEXT, FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON UPDATE NO ACTION ON DELETE NO ACTION)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  PersonDao get personDao {
    return _personDaoInstance ??= _$PersonDao(database, changeListener);
  }

  @override
  NoteDao get noteDao {
    return _noteDaoInstance ??= _$NoteDao(database, changeListener);
  }

  @override
  DateDao get dateDao {
    return _dateDaoInstance ??= _$DateDao(database, changeListener);
  }
}

class _$PersonDao extends PersonDao {
  _$PersonDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _personInsertionAdapter = InsertionAdapter(
            database,
            'person',
            (Person item) => <String, dynamic>{
                  'id': item.id,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'description': item.description
                },
            changeListener),
        _personUpdateAdapter = UpdateAdapter(
            database,
            'person',
            ['id'],
            (Person item) => <String, dynamic>{
                  'id': item.id,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'description': item.description
                },
            changeListener),
        _personDeletionAdapter = DeletionAdapter(
            database,
            'person',
            ['id'],
            (Person item) => <String, dynamic>{
                  'id': item.id,
                  'first_name': item.firstName,
                  'last_name': item.lastName,
                  'description': item.description
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _personMapper = (Map<String, dynamic> row) => Person(
      id: row['id'] as int,
      firstName: row['first_name'] as String,
      lastName: row['last_name'] as String,
      description: row['description'] as String);

  final InsertionAdapter<Person> _personInsertionAdapter;

  final UpdateAdapter<Person> _personUpdateAdapter;

  final DeletionAdapter<Person> _personDeletionAdapter;

  @override
  Stream<Person> subscribe(int id) {
    return _queryAdapter.queryStream('SELECT * FROM person WHERE id = ?',
        arguments: <dynamic>[id],
        queryableName: 'person',
        isView: false,
        mapper: _personMapper);
  }

  @override
  Stream<List<Person>> subscribeAll() {
    return _queryAdapter.queryListStream('SELECT * FROM person',
        queryableName: 'person', isView: false, mapper: _personMapper);
  }

  @override
  Future<int> insert(Person object) {
    return _personInsertionAdapter.insertAndReturnId(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> update(Person object) async {
    await _personUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> delete(Person object) async {
    await _personDeletionAdapter.delete(object);
  }
}

class _$NoteDao extends NoteDao {
  _$NoteDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _noteInsertionAdapter = InsertionAdapter(
            database,
            'note',
            (Note item) => <String, dynamic>{
                  'id': item.id,
                  'person_id': item.personId,
                  'content': item.content
                },
            changeListener),
        _noteUpdateAdapter = UpdateAdapter(
            database,
            'note',
            ['id'],
            (Note item) => <String, dynamic>{
                  'id': item.id,
                  'person_id': item.personId,
                  'content': item.content
                },
            changeListener),
        _noteDeletionAdapter = DeletionAdapter(
            database,
            'note',
            ['id'],
            (Note item) => <String, dynamic>{
                  'id': item.id,
                  'person_id': item.personId,
                  'content': item.content
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _noteMapper = (Map<String, dynamic> row) => Note(
      id: row['id'] as int,
      personId: row['person_id'] as int,
      content: row['content'] as String);

  final InsertionAdapter<Note> _noteInsertionAdapter;

  final UpdateAdapter<Note> _noteUpdateAdapter;

  final DeletionAdapter<Note> _noteDeletionAdapter;

  @override
  Stream<Note> subscribe(int id) {
    return _queryAdapter.queryStream('SELECT * FROM note WHERE id = ?',
        arguments: <dynamic>[id],
        queryableName: 'note',
        isView: false,
        mapper: _noteMapper);
  }

  @override
  Stream<List<Note>> subscribeAll() {
    return _queryAdapter.queryListStream('SELECT * FROM note',
        queryableName: 'note', isView: false, mapper: _noteMapper);
  }

  @override
  Stream<List<Note>> subscribeAllForUser(int personId) {
    return _queryAdapter.queryListStream(
        'SELECT * FROM note WHERE person_id = ?',
        arguments: <dynamic>[personId],
        queryableName: 'note',
        isView: false,
        mapper: _noteMapper);
  }

  @override
  Future<int> insert(Note object) {
    return _noteInsertionAdapter.insertAndReturnId(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> update(Note object) async {
    await _noteUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> delete(Note object) async {
    await _noteDeletionAdapter.delete(object);
  }
}

class _$DateDao extends DateDao {
  _$DateDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _dateInsertionAdapter = InsertionAdapter(
            database,
            'date',
            (Date item) => <String, dynamic>{
                  'id': item.id,
                  'person_id': item.personId,
                  'date': item.dateIso8601
                },
            changeListener),
        _dateUpdateAdapter = UpdateAdapter(
            database,
            'date',
            ['id'],
            (Date item) => <String, dynamic>{
                  'id': item.id,
                  'person_id': item.personId,
                  'date': item.dateIso8601
                },
            changeListener),
        _dateDeletionAdapter = DeletionAdapter(
            database,
            'date',
            ['id'],
            (Date item) => <String, dynamic>{
                  'id': item.id,
                  'person_id': item.personId,
                  'date': item.dateIso8601
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _dateMapper = (Map<String, dynamic> row) => Date(
      id: row['id'] as int,
      personId: row['person_id'] as int,
      dateIso8601: row['date'] as String);

  final InsertionAdapter<Date> _dateInsertionAdapter;

  final UpdateAdapter<Date> _dateUpdateAdapter;

  final DeletionAdapter<Date> _dateDeletionAdapter;

  @override
  Stream<Date> subscribe(int id) {
    return _queryAdapter.queryStream('SELECT * FROM date WHERE id = ?',
        arguments: <dynamic>[id],
        queryableName: 'date',
        isView: false,
        mapper: _dateMapper);
  }

  @override
  Stream<List<Date>> subscribeAll() {
    return _queryAdapter.queryListStream('SELECT * FROM date',
        queryableName: 'date', isView: false, mapper: _dateMapper);
  }

  @override
  Stream<List<Date>> subscribeAllForUser(int personId) {
    return _queryAdapter.queryListStream(
        'SELECT * FROM date WHERE person_id = ?',
        arguments: <dynamic>[personId],
        queryableName: 'date',
        isView: false,
        mapper: _dateMapper);
  }

  @override
  Future<int> insert(Date object) {
    return _dateInsertionAdapter.insertAndReturnId(
        object, OnConflictStrategy.abort);
  }

  @override
  Future<void> update(Date object) async {
    await _dateUpdateAdapter.update(object, OnConflictStrategy.abort);
  }

  @override
  Future<void> delete(Date object) async {
    await _dateDeletionAdapter.delete(object);
  }
}
