import 'package:flutter/material.dart';
import 'package:holder/bloc/bloc_app.dart';
import 'package:holder/ui/home/home_screen.dart';

void main() => runApp(HolderApp());

class HolderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocApp(
      child: MaterialApp(
        home: HomeScreen(),
        routes: {
          HomeScreen.route: (_) => HomeScreen(),
        },
      ),
    );
  }
}
