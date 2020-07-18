import 'package:flutter/material.dart';
import 'package:holder/model/person.dart';
import 'package:holder/util/database.dart';
import 'package:holder/util/locator.dart';

class PersonScreen extends StatelessWidget {
  final int id;

  PersonScreen({this.id});

  final _personDao = locator<AppDatabase>().personDao;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Person>(
      stream: _personDao.subscribe(id),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.delete),
                  tooltip: 'Delete',
                  onPressed: () async {
                    await _personDao.delete(snapshot.data);
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            body: Text(snapshot.data.toString()),
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
