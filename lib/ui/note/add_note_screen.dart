import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:holder/bloc/note_add/bloc.dart';
import 'package:holder/bloc/note_add/note_add_event.dart';
import 'package:holder/ui/widgets/action_flat_button.dart';

class AddNoteScreen extends StatefulWidget {
  final int personId;

  AddNoteScreen({this.personId});

  static const route = '/note/create';

  @override
  _AddNoteScreenState createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  NoteAddBloc noteAddBloc;

  final contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    noteAddBloc = NoteAddBloc(personId: widget.personId);
  }

  void submit() {
    noteAddBloc.add(NoteAddEvent.saved(content: contentController.text));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add note'),
        actions: <Widget>[
          ActionFlatButton(
            text: 'Save'.toUpperCase(),
            onPressed: submit,
          ),
        ],
      ),
      body: BlocConsumer<NoteAddBloc, NoteAddState>(
        bloc: noteAddBloc,
        listener: (context, state) {
          state.maybeWhen(
            success: () {
              Navigator.of(context).pop();
            },
            error: (description) {
              Scaffold.of(context).showSnackBar(
                SnackBar(content: Text(description)),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Container(
                  child: TextField(
                    controller: contentController,
                    minLines: 1,
                    maxLines: 5,
                    maxLengthEnforced: true,
                    decoration: InputDecoration(
                      labelText: 'Content',
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    noteAddBloc?.close();
    super.dispose();
  }
}
