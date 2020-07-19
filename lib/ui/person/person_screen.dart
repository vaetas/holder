import 'package:flutter/material.dart';
import 'package:holder/dao/date_dao.dart';
import 'package:holder/dao/note_dao.dart';
import 'package:holder/dao/person_dao.dart';
import 'package:holder/model/date.dart';
import 'package:holder/model/note.dart';
import 'package:holder/model/person.dart';
import 'package:holder/ui/date/add_date_screen.dart';
import 'package:holder/ui/date/date_tile.dart';
import 'package:holder/ui/note/add_note_screen.dart';
import 'package:holder/util/log.dart';

enum _PersonScreenPopupItem {
  delete,
}

class PersonScreen extends StatelessWidget
    with LogMixin, PersonDaoMixin, NoteDaoMixin, DateDaoMixin {
  final int id;

  PersonScreen({this.id});

  Future<bool> delete(Person person) async {
    // TODO: Move to [PersonBloc]
    try {
      await personDao.delete(person);
      return true;
    } catch (e) {
      log('Error', error: e);
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Person>(
      stream: personDao.subscribe(id),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final person = snapshot.data;

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
                            final success = await delete(person);
                            if (success) {
                              Navigator.of(context).pop();
                            }
                            break;
                        }
                      },
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem<_PersonScreenPopupItem>(
                            child: Text('Delete'),
                            value: _PersonScreenPopupItem.delete,
                          ),
                        ];
                      },
                    ),
                  ],
                ),
                SliverToBoxAdapter(
                  child: StreamBuilder<List<Date>>(
                    stream: dateDao.subscribeAllForUser(id),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final items = <Widget>[];
                        snapshot.data.forEach((element) {
                          items.add(DateTile(date: element));
                        });
                        items.add(FlatButton.icon(
                          icon: Icon(Icons.add),
                          label: Text('Important Date'),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AddDateScreen(
                                personId: person.id,
                              ),
                            ));
                          },
                        ));

                        return Column(
                          children: items,
                        );
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                ),
                StreamBuilder<List<Note>>(
                  stream: noteDao.subscribeAllForUser(id),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            final note = snapshot.data[index];
                            return ListTile(
                              title: Text(note.content),
                            );
                          },
                          childCount: snapshot.data.length,
                        ),
                      );
                    } else {
                      return SliverToBoxAdapter(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ],
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return AddNoteScreen(personId: id);
                  },
                ));
              },
              label: Text('Note'),
              icon: Icon(Icons.add),
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
