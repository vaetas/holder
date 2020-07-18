import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:holder/bloc/person_list/bloc.dart';
import 'package:holder/bloc/person_list/person_list_event.dart';
import 'package:holder/model/person.dart';
import 'package:holder/util/database.dart';
import 'package:holder/util/locator.dart';

class PersonListBloc extends Bloc<PersonListEvent, PersonListState> {
  final _database = locator<AppDatabase>();

  PersonListBloc() : super(const PersonListState.initial()) {
    _database.personDao.getAll().listen((event) {
      this.add(PersonListEvent.updated(event));
    });
  }

  @override
  Stream<PersonListState> mapEventToState(PersonListEvent event) async* {
    yield* event.when(
      updated: _mapUpdate,
    );
  }

  Stream<PersonListState> _mapUpdate(List<Person> people) async* {
    yield PersonListState.success(people: people.map((e) => e.name).toList());
  }

  @override
  void onTransition(Transition<PersonListEvent, PersonListState> transition) {
    super.onTransition(transition);
    log(transition.toString());
  }
}
