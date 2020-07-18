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
            'CREATE TABLE IF NOT EXISTS `person` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  PersonDao get personDao {
    return _personDaoInstance ??= _$PersonDao(database, changeListener);
  }
}

class _$PersonDao extends PersonDao {
  _$PersonDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database, changeListener),
        _personInsertionAdapter = InsertionAdapter(
            database,
            'person',
            (Person item) =>
                <String, dynamic>{'id': item.id, 'name': item.name},
            changeListener),
        _personUpdateAdapter = UpdateAdapter(
            database,
            'person',
            ['id'],
            (Person item) =>
                <String, dynamic>{'id': item.id, 'name': item.name},
            changeListener),
        _personDeletionAdapter = DeletionAdapter(
            database,
            'person',
            ['id'],
            (Person item) =>
                <String, dynamic>{'id': item.id, 'name': item.name},
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  static final _personMapper = (Map<String, dynamic> row) =>
      Person(id: row['id'] as int, name: row['name'] as String);

  final InsertionAdapter<Person> _personInsertionAdapter;

  final UpdateAdapter<Person> _personUpdateAdapter;

  final DeletionAdapter<Person> _personDeletionAdapter;

  @override
  Stream<List<Person>> subscribeAll() {
    return _queryAdapter.queryListStream('SELECT * FROM person',
        queryableName: 'person', isView: false, mapper: _personMapper);
  }

  @override
  Stream<Person> subscribe(int id) {
    return _queryAdapter.queryStream('SELECT * FROM person WHERE id = ?',
        arguments: <dynamic>[id],
        queryableName: 'person',
        isView: false,
        mapper: _personMapper);
  }

  @override
  Future<int> insert(Person person) {
    return _personInsertionAdapter.insertAndReturnId(
        person, OnConflictStrategy.abort);
  }

  @override
  Future<void> update(Person person) async {
    await _personUpdateAdapter.update(person, OnConflictStrategy.abort);
  }

  @override
  Future<void> delete(Person person) async {
    await _personDeletionAdapter.delete(person);
  }
}
