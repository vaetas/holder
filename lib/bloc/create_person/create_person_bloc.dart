import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:holder/bloc/create_person/bloc.dart';
import 'package:holder/model/person.dart';
import 'package:holder/util/database.dart';
import 'package:holder/util/locator.dart';

class CreatePersonBloc extends Bloc<CreatePersonEvent, CreatePersonState> {
  CreatePersonBloc() : super(const CreatePersonState.inProgress());

  final _personDao = locator<AppDatabase>().personDao;

  @override
  Stream<CreatePersonState> mapEventToState(CreatePersonEvent event) async* {
    yield* event.when(
      saved: _mapSaved,
    );
  }

  Stream<CreatePersonState> _mapSaved(
    String firstName,
    String lastName,
  ) async* {
    final _firstName = firstName.trim();
    if (firstName == null || _firstName.isEmpty) {
      yield const CreatePersonState.error('First name cannot be empty');
      return;
    }

    final _lastName = lastName.trim();
    if (lastName == null || _lastName.isEmpty) {
      yield const CreatePersonState.error('Last name cannot be empty');
    }

    try {
      yield const CreatePersonState.inProgress();
      final person = Person(
        firstName: _firstName,
        lastName: _lastName,
      );
      await _personDao.insert(person);
      yield const CreatePersonState.success();
    } catch (e) {
      print(e);
    }
  }

  @override
  void onTransition(
    Transition<CreatePersonEvent, CreatePersonState> transition,
  ) {
    super.onTransition(transition);
    log(transition.toString());
  }
}
