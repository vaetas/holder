import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:holder/bloc/create_person/bloc.dart';
import 'package:holder/bloc/create_person/create_person_event.dart';
import 'package:holder/ui/widgets/action_flat_button.dart';

class CreatePersonScreen extends StatefulWidget {
  static const route = '/person/create';

  @override
  _CreatePersonScreenState createState() => _CreatePersonScreenState();
}

class _CreatePersonScreenState extends State<CreatePersonScreen> {
  CreatePersonBloc createPersonBloc;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    createPersonBloc = CreatePersonBloc();
  }

  void submit() {
    createPersonBloc.add(
      CreatePersonEvent.saved(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create'),
        actions: <Widget>[
          ActionFlatButton(
            text: 'Save'.toUpperCase(),
            onPressed: submit,
          ),
        ],
      ),
      body: BlocConsumer<CreatePersonBloc, CreatePersonState>(
        bloc: createPersonBloc,
        listener: (context, state) {
          state.maybeWhen(
            error: (description) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text(description),
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: firstNameController,
                  decoration: InputDecoration(
                    labelText: 'First name',
                  ),
                ),
                TextField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                    labelText: 'Last name',
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    createPersonBloc?.close();
    super.dispose();
  }
}
