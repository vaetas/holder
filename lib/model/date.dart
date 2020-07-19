import 'package:floor/floor.dart';
import 'package:flutter/foundation.dart';
import 'package:holder/model/person.dart';

@Entity(
  tableName: 'date',
  foreignKeys: [
    ForeignKey(
      childColumns: ['person_id'],
      parentColumns: ['id'],
      entity: Person,
    ),
  ],
)
class Date {
  @PrimaryKey(autoGenerate: true)
  final int id;

  @ColumnInfo(name: 'person_id')
  final int personId;

  @ColumnInfo(name: 'date')
  String dateIso8601;

  DateTime get date => DateTime.parse(dateIso8601);

  Date({
    this.id,
    @required this.personId,
    @required this.dateIso8601,
  });
}
