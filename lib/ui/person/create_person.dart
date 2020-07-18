import 'package:flutter/material.dart';

class CreatePersonScreen extends StatelessWidget {
  static const route = '/person/create';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create person'),
      ),
    );
  }
}
