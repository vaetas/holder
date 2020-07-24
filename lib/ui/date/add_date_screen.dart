import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:holder/bloc/date_add/bloc.dart';
import 'package:holder/bloc/date_add/date_add_event.dart';
import 'package:holder/dao/date_dao.dart';
import 'package:holder/ui/widgets/action_flat_button.dart';
import 'package:intl/intl.dart';

class AddDateScreen extends StatefulWidget {
  static const route = '/date/add';

  final int personId;

  AddDateScreen({this.personId});

  @override
  _AddDateScreenState createState() => _AddDateScreenState();
}

class _AddDateScreenState extends State<AddDateScreen> with DateDaoMixin {
  DateAddBloc dateAddBloc;
  DateTime dateTime;

  @override
  void initState() {
    super.initState();
    dateAddBloc = DateAddBloc(personId: widget.personId);
  }

  final nameController = TextEditingController();

  void submit() {
    dateAddBloc.add(DateAddEvent.saved(
      name: nameController.text,
      dateTime: dateTime,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add date'),
        actions: <Widget>[
          ActionFlatButton(
            text: 'Save'.toUpperCase(),
            onPressed: submit,
          ),
        ],
      ),
      body: BlocConsumer<DateAddBloc, DateAddState>(
        cubit: dateAddBloc,
        listener: (context, state) {
          state.maybeWhen(
            success: () {
              Navigator.of(context).pop();
            },
            error: (description) {
              Scaffold.of(context).showSnackBar(
                SnackBar(content: Text(description)),
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
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                FlatButton.icon(
                  icon: Icon(Icons.date_range),
                  label: dateTime != null
                      ? Text(DateFormat('y/MM/dd').format(dateTime))
                      : Text('Select date'),
                  onPressed: () async {
                    final now = DateTime.now();

                    final date = await showDatePicker(
                      context: context,
                      initialDate: now,
                      firstDate: DateTime.fromMillisecondsSinceEpoch(0),
                      lastDate: now.add(const Duration(days: 360)),
                    );

                    if (date != null) {
                      setState(() {
                        dateTime = date;
                      });
                    }
                  },
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
    dateAddBloc?.close();
    super.dispose();
  }
}
