import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:holder/bloc/person/bloc.dart';
import 'package:holder/dao/date_dao.dart';
import 'package:holder/dao/note_dao.dart';
import 'package:holder/dao/person_dao.dart';
import 'package:holder/ui/date/add_date_screen.dart';
import 'package:holder/ui/date/date_tile.dart';
import 'package:holder/ui/note/add_note_screen.dart';
import 'package:logx/logx.dart';

enum _PersonScreenPopupItem {
  delete,
}

class PersonScreen extends StatefulWidget {
  final int id;

  PersonScreen({this.id});

  @override
  _PersonScreenState createState() => _PersonScreenState();
}

class _PersonScreenState extends State<PersonScreen>
    with LogMixin, PersonDaoMixin, NoteDaoMixin, DateDaoMixin {
  PersonBloc personBloc;

  @override
  void initState() {
    super.initState();
    personBloc = PersonBloc(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PersonBloc, PersonState>(
      cubit: personBloc,
      listener: (context, state) {
        state.maybeWhen(
          deleted: () {
            Navigator.of(context).pop();
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          },
          success: (person, notes, dates) {
            return Scaffold(
              body: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    expandedHeight: 125,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text(person.fullName),
                      centerTitle: false,
                    ),
                    pinned: true,
                    actions: <Widget>[
                      PopupMenuButton<_PersonScreenPopupItem>(
                        onSelected: (item) async {
                          switch (item) {
                            case _PersonScreenPopupItem.delete:
                              personBloc.add(const PersonEvent.deleted());
                              break;
                          }
                        },
                        itemBuilder: (context) {
                          return const [
                            PopupMenuItem<_PersonScreenPopupItem>(
                              child: Text('Delete'),
                              value: _PersonScreenPopupItem.delete,
                            ),
                          ];
                        },
                      ),
                    ],
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final date = dates[index];
                        return DateTile(date: date);
                      },
                      childCount: dates.length,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: FlatButton.icon(
                      icon: const Icon(Icons.add),
                      label: const Text('Important Date'),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AddDateScreen(
                            personId: person.id,
                          ),
                        ));
                      },
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final note = notes[index];
                        return ListTile(
                          title: Text(note.content),
                        );
                      },
                      childCount: notes.length,
                    ),
                  ),
                ],
              ),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return AddNoteScreen(personId: widget.id);
                    },
                  ));
                },
                label: const Text('Note'),
                icon: const Icon(Icons.add),
              ),
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    personBloc?.close();
    super.dispose();
  }
}
