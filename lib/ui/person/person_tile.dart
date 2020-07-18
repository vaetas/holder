import 'package:flutter/material.dart';
import 'package:holder/model/person.dart';
import 'package:holder/ui/person/person_screen.dart';

class PersonTile extends StatelessWidget {
  final Person person;

  PersonTile({this.person});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(person.fullName),
      subtitle: Text(person.description),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PersonScreen(id: person.id),
        ));
      },
    );
  }
}
