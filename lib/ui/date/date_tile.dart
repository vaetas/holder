import 'package:flutter/material.dart';
import 'package:holder/model/date.dart';
import 'package:holder/util/extension.dart';

class DateTile extends StatelessWidget {
  final Date date;

  DateTile({this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            date.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 16),
          Text(date.date.formatted),
        ],
      ),
    );
  }
}
