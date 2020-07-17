import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:holder/bloc/person_list/bloc.dart';

class PersonListSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      CloseButton(
        onPressed: () {
          query = '';
        },
      )
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
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('$index $query'),
        );
      },
      itemCount: 5,
    );
  }
}

class HomeScreen extends StatelessWidget {
  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Holder'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                  context: context, delegate: PersonListSearchDelegate());
            },
          ),
        ],
      ),
      body: BlocConsumer<PersonListBloc, PersonListState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.when(
            initial: () {
              return Center(
                child: CircularProgressIndicator(),
              );
            },
            success: (people) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  final person = people[index];

                  return ListTile(
                    title: Text(person),
                  );
                },
                itemCount: people.length,
              );
            },
          );
        },
      ),
    );
  }
}
