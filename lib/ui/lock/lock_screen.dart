import 'package:flutter/material.dart';

class LockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Holder',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(height: 40),
              Icon(
                Icons.fingerprint,
                size: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
