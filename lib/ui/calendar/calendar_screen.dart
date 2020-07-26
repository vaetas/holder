import 'package:flutter/material.dart';
import 'package:holder/dao/date_dao.dart';
import 'package:holder/dao/person_dao.dart';
import 'package:holder/model/date.dart';
import 'package:holder/model/person.dart';
import 'package:holder/util/extension.dart';

class CalendarScreen extends StatelessWidget with DateDaoMixin, PersonDaoMixin {
  static const route = '/calendar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
      ),
      body: StreamBuilder<List<Date>>(
        stream: dateDao.subscribeAll(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final dates = snapshot.data.sortByDate((item) => item.date);
            return ListView.builder(
              itemBuilder: (context, index) {
                final date = dates[index];
                return ListTile(
                  title: Text('${date.date.formatted}'),
                  subtitle: Text('${date.name}'),
                  trailing: StreamBuilder<Person>(
                    stream: personDao.subscribe(date.personId),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final person = snapshot.data;
                        return Text(person.fullName);
                      } else {
                        return Text('');
                      }
                    },
                  ),
                );
              },
              itemCount: snapshot.data.length,
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
