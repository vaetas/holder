import 'package:flutter/material.dart';
import 'package:holder/ui/calendar/calendar_screen.dart';
import 'package:holder/ui/home/home_screen.dart';
import 'package:holder/ui/settings/settings_screen.dart';

const HOME_SCREEN = 0;
const CALENDAR_SCREEN = 1;
const SETTINGS_SCREEN = 2;

class Root extends StatefulWidget {
  static const route = '/';

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  int currentIndex = HOME_SCREEN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: [
          HomeScreen(),
          CalendarScreen(),
          SettingsScreen(),
        ],
        index: currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('People'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('Calendar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
