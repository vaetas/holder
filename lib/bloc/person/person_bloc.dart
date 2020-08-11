import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:holder/bloc/person/bloc.dart';
import 'package:holder/bloc/person/person_event.dart';
import 'package:holder/dao/date_dao.dart';
import 'package:holder/dao/note_dao.dart';
import 'package:holder/dao/person_dao.dart';
import 'package:holder/model/date.dart';
import 'package:holder/model/note.dart';
import 'package:holder/model/person.dart';
import 'package:logx/logx.dart';
import 'package:rxdart/rxdart.dart';

@immutable
class PersonData {
  final Person person;
  final List<Note> notes;
  final List<Date> dates;

  PersonData({
    this.person,
    this.notes,
    this.dates,
  });

  @override
  String toString() =>
      'PersonData{person: $person, notes: $notes, dates: $dates}';
}

class PersonBloc extends Bloc<PersonEvent, PersonState>
    with LogMixin, PersonDaoMixin, NoteDaoMixin, DateDaoMixin {
  final int id;
  StreamSubscription _subscription;

  PersonBloc(this.id) : super(const PersonState.initial()) {
    final personStream = personDao.subscribe(id);
    final noteStream = noteDao.subscribeAllForUser(id);
    final dateStream = dateDao.subscribeAllForUser(id);
    _subscription = Rx.combineLatest3(
      personStream,
      noteStream,
      dateStream,
      (person, notes, dates) =>
          PersonEvent.loaded(person: person, notes: notes, dates: dates),
    ).listen((event) => this.add(event));
  }

  @override
  Stream<PersonState> mapEventToState(PersonEvent event) async* {
    yield* event.when(
      loaded: _mapLoaded,
      deleted: _mapDeleted,
    );
  }

  Stream<PersonState> _mapLoaded(
    Person person,
    List<Note> notes,
    List<Date> dates,
  ) async* {
    yield PersonState.success(
      person: person,
      notes: notes,
      dates: dates,
    );
  }

  Stream<PersonState> _mapDeleted() async* {
    yield* state.maybeWhen(
      success: (person, notes, dates) async* {
        try {
          await noteDao.deleteAllForUser(notes);
          await dateDao.deleteAllForUser(dates);
          await personDao.delete(person);

          yield const PersonState.deleted();
        } catch (e) {
          log('Failed to delete person', error: e);
        }
      },
      orElse: () async* {},
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
