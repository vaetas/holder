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

  final String name;

  @ColumnInfo(name: 'date')
  final String dateIso8601;

  DateTime get date => DateTime.parse(dateIso8601);

  Date({
    this.id,
    @required this.personId,
    @required this.name,
    @required this.dateIso8601,
  });

  @override
  String toString() {
    return 'Date{id: $id, personId: $personId, name: $name, dateIso8601: $dateIso8601}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Date &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          personId == other.personId &&
          name == other.name &&
          dateIso8601 == other.dateIso8601;

  @override
  int get hashCode =>
      id.hashCode ^ personId.hashCode ^ name.hashCode ^ dateIso8601.hashCode;
}
