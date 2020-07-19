import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:holder/bloc/date_add/bloc.dart';
import 'package:holder/bloc/date_add/date_add_state.dart';
import 'package:holder/dao/date_dao.dart';
import 'package:holder/model/date.dart';
import 'package:holder/util/log.dart';

class DateAddBloc extends Bloc<DateAddEvent, DateAddState>
    with DateDaoMixin, LogMixin {
  final int personId;

  DateAddBloc({this.personId}) : super(const DateAddState.inProgress());

  @override
  Stream<DateAddState> mapEventToState(DateAddEvent event) async* {
    yield* event.when(
      saved: _mapSaved,
    );
  }

  Stream<DateAddState> _mapSaved(String name, DateTime dateTime) async* {
    final _name = name.trim();
    if (_name.isEmpty) {
      yield const DateAddState.error('Name cannot be empty');
      return;
    }

    if (dateTime == null) {
      yield const DateAddState.error('Please select date');
      return;
    }

    yield const DateAddState.inProgress();
    try {
      final date = Date(
        personId: personId,
        name: name,
        dateIso8601: dateTime.toIso8601String(),
      );
      await dateDao.insert(date);
      yield const DateAddState.success();
    } catch (e) {
      log(e);
      yield const DateAddState.error('Internal error');
    }
  }
}
