import 'package:flutter/material.dart';

class ActionFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  ActionFlatButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
