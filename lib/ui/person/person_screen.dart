import 'package:flutter/material.dart';
import 'package:holder/model/note.dart';
import 'package:holder/model/person.dart';
import 'package:holder/ui/note/add_note_screen.dart';
import 'package:holder/util/database.dart';
import 'package:holder/util/locator.dart';

class PersonScreen extends StatelessWidget {
  final int id;

  PersonScreen({this.id});

  final _personDao = locator<AppDatabase>().personDao;
  final _noteDao = locator<AppDatabase>().noteDao;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Person>(
      stream: _personDao.subscribe(id),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final person = snapshot.data;

          return Scaffold(
            body: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.delete),
                      tooltip: 'Delete',
                      onPressed: () async {
                        await _personDao.delete(snapshot.data);
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          person.fullName,
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                  ),
                ),
                StreamBuilder<List<Note>>(
                  stream: _noteDao.subscribeAllForUser(id),
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
