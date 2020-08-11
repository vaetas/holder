import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:holder/bloc/person_list/bloc.dart';
import 'package:holder/ui/home/search.dart';
import 'package:holder/ui/person/create_person_screen.dart';
import 'package:holder/ui/person/person_screen.dart';
import 'package:holder/ui/person/person_tile.dart';
import 'package:logx/logx.dart';

class HomeScreen extends StatelessWidget with LogMixin {
  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PersonListBloc, PersonListState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.when(
          initial: () {
            return const Center(child: CircularProgressIndicator());
          },
          success: (people) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Holder'),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () async {
                      final result = await showSearch(
                        context: context,
                        delegate: PersonListSearchDelegate(people),
                      );

                      if (result != null && result is int) {
                        await Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return PersonScreen(id: result);
                          },
                        ));
                      }
                    },
                  ),
                ],
              ),
              body: ListView.builder(
                itemBuilder: (context, index) {
                  final person = people[index];
                  return PersonTile(
                    person: person,
                  );
                },
                itemCount: people.length,
              ),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {
                  Navigator.of(context).pushNamed(CreatePersonScreen.route);
                },
                label: const Text('Person'),
                icon: const Icon(Icons.add),
                tooltip: 'Create new person',
              ),
            );
          },
        );
      },
    );
  }
}
