import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:holder/bloc/person_list/bloc.dart';

class PersonListBloc extends Bloc<PersonListEvent, PersonListState> {
  PersonListBloc()
      : super(
          const PersonListState.success(people: ['Jon', 'Jim', 'Steve']),
        );

  @override
  Stream<PersonListState> mapEventToState(PersonListEvent event) async* {}
}
