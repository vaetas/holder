import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:holder/bloc/person/bloc.dart';
import 'package:holder/model/note.dart';
import 'package:holder/model/person.dart';
import 'package:holder/util/database.dart';
import 'package:holder/util/locator.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  final int id;

  PersonBloc(this.id) : super(const PersonState.inProgress()) {
    _personDao.subscribe(id).listen((person) {
      this.add(PersonEvent.personLoaded(person: person));
    });

    _noteDao.subscribeAllForUser(id).listen((notes) {
      this.add(PersonEvent.notesLoaded(notes: notes));
    });
  }

  final _personDao = locator<AppDatabase>().personDao;
  final _noteDao = locator<AppDatabase>().noteDao;

  @override
  Stream<PersonState> mapEventToState(PersonEvent event) async* {
    yield* event.when(
      personLoaded: _mapPersonLoaded,
      notesLoaded: _mapNotesLoaded,
    );
  }

  Stream<PersonState> _mapPersonLoaded(Person person) async* {
    yield* state.maybeMap(
      initial: (_) async* {
        yield PersonState.success(
          person: person,
          notes: [],
        );
      },
      success: (value) async* {
        yield value.copyWith(
          person: person,
        );
      },
      orElse: () async* {},
    );
  }

  Stream<PersonState> _mapNotesLoaded(List<Note> notes) async* {
    yield* state.maybeMap(
      initial: (_) async* {
        yield PersonState.success();
      },
      orElse: () async* {},
    );
  }
}
