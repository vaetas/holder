import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:holder/bloc/person_list/bloc.dart';
import 'package:holder/ui/person/create_person.dart';

class PersonListSearchDelegate extends SearchDelegate {
  final List<String> people;

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
        .where((e) => e.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemBuilder: (context, index) {
        final person = filtered[index];
        return ListTile(
          title: Text(person),
        );
      },
      itemCount: filtered.length,
    );
  }
}

class HomeScreen extends StatelessWidget {
  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PersonListBloc, PersonListState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.when(
          initial: () {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
          success: (people) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Holder'),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      showSearch(
                        context: context,
                        delegate: PersonListSearchDelegate(people),
                      );
                    },
                  ),
                ],
              ),
              body: ListView.builder(
                itemBuilder: (context, index) {
                  final person = people[index];

                  return ListTile(
                    title: Text(person),
                  );
                },
                itemCount: people.length,
              ),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.of(context).pushNamed(CreatePersonScreen.route);
                },
                label: Text('Create'),
                icon: Icon(Icons.add),
                tooltip: 'Create new person',
              ),
            );
          },
        );
      },
    );
  }
}
