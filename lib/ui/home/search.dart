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
  Widget buildLeading(BuildContext context) {
    return BackButton();
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final filtered = people
        .where((e) => e.fullName.toLowerCase().contains(query.toLowerCase()))
        .toList();

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
