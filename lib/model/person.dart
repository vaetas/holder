import 'package:floor/floor.dart';

@Entity(tableName: 'person')
class Person {
  @PrimaryKey(autoGenerate: true)
  final int id;

  @ColumnInfo(name: 'first_name')
  final String firstName;

  @ColumnInfo(name: 'last_name')
  final String lastName;

  final String description;

  Person({
    this.id,
    this.firstName,
    this.lastName,
    this.description,
  });

  String get fullName => '$firstName $lastName';
}
