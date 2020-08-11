import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:holder/bloc/note_add/bloc.dart';
import 'package:holder/bloc/note_add/note_add_state.dart';
import 'package:holder/dao/note_dao.dart';
import 'package:holder/model/note.dart';
import 'package:logx/logx.dart';

class NoteAddBloc extends Bloc<NoteAddEvent, NoteAddState>
    with NoteDaoMixin, LogMixin {
  final int personId;

  NoteAddBloc({this.personId}) : super(const NoteAddState.inProgress());

  @override
  Stream<NoteAddState> mapEventToState(NoteAddEvent event) async* {
    yield* event.when(
      saved: _mapSaved,
    );
  }

  Stream<NoteAddState> _mapSaved(String content) async* {
    final _content = content.trim();
    if (content == null || _content.isEmpty) {
      yield const NoteAddState.error('Content cannot be empty');
      return;
    }

    try {
      final note = Note(
        personId: personId,
        content: _content,
      );
      log('Inserting');
      await noteDao.insert(note);
      yield const NoteAddState.success();
    } catch (e) {
      yield const NoteAddState.error('Failed to add entry');
      log('Failed to add entry', error: e);
    }
  }

  @override
  void onTransition(Transition<NoteAddEvent, NoteAddState> transition) {
    super.onTransition(transition);
    log(transition);
  }
}
