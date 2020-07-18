import 'package:flutter/material.dart';
import 'package:holder/bloc/bloc_app.dart';
import 'file:///C:/Users/vojtech/dev/holder/lib/res/theme.dart';
import 'package:holder/ui/home/home_screen.dart';
import 'package:holder/ui/person/create_person_screen.dart';
import 'package:holder/util/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  runApp(HolderApp());
}

class HolderApp extends StatelessWidget {
  final theme = AppTheme();

  @override
  Widget build(BuildContext context) {
    return BlocApp(
      child: MaterialApp(
        home: HomeScreen(),
        theme: theme.light,
        darkTheme: theme.dark,
        themeMode: ThemeMode.system,
        routes: {
          HomeScreen.route: (_) => HomeScreen(),
          CreatePersonScreen.route: (_) => CreatePersonScreen(),
        },
      ),
    );
  }
}
