import 'package:flutter/material.dart';
import 'package:holder/model/person.dart';

class PersonListSearchDelegate extends SearchDelegate {
  final List<Person> people;

  PersonListSearchDelegate(this.people);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = '';
        },
        tooltip: 'Clear',
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) => BackButton();

  @override
  Widget buildResults(BuildContext context) => buildSuggestions(context);

  List<Person> get filtered => people
      .where((e) => e.fullName.toLowerCase().contains(query.toLowerCase()))
      .toList();

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final person = filtered[index];
        return ListTile(
          title: Text(person.fullName),
          onTap: () {
            close(context, person.id);
          },
        );
      },
      itemCount: filtered.length,
    );
  }
}
