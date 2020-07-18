import 'package:flutter/material.dart';
import 'package:holder/model/person.dart';
import 'package:holder/util/database.dart';
import 'package:holder/util/locator.dart';

class PersonScreen extends StatelessWidget {
  final int id;

  PersonScreen({this.id});

  final _database = locator<AppDatabase>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StreamBuilder<Person>(
        stream: _database.personDao.subscribe(id),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data.toString());
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
