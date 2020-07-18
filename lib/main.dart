import 'package:flutter/material.dart';
import 'package:holder/bloc/bloc_app.dart';
import 'package:holder/ui/home/home_screen.dart';
import 'package:holder/ui/person/create_person.dart';
import 'package:holder/util/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  runApp(HolderApp());
}

class HolderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocApp(
      child: MaterialApp(
        home: HomeScreen(),
        routes: {
          HomeScreen.route: (_) => HomeScreen(),
          CreatePersonScreen.route: (_) => CreatePersonScreen(),
        },
      ),
    );
  }
}
