import 'package:flutter/material.dart';
import 'package:holder/model/date.dart';
import 'package:holder/util/extension.dart';

class DateTile extends StatelessWidget {
  final Date date;

  DateTile({Key key, this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
