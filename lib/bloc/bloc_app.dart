import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:holder/bloc/person_list/bloc.dart';

class BlocApp extends StatelessWidget {
  final Widget child;

  BlocApp({this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => PersonListBloc()),
      ],
      child: child,
    );
  }
}
