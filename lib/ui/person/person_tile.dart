import 'package:flutter/material.dart';
import 'package:holder/model/person.dart';
import 'package:holder/ui/person/person_screen.dart';

class PersonTile extends StatelessWidget {
  final Person person;

  PersonTile({Key key, this.person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(person.fullName),
      subtitle: Text(person.description),
      leading: _Avatar(),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PersonScreen(id: person.id),
        ));
      },
    );
  }
}

class _Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).primaryColor.withOpacity(0.075),
      ),
      child: Icon(Icons.person),
    );
  }
}
