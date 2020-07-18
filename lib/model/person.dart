import 'package:floor/floor.dart';

@Entity(tableName: 'person')
class Person {
  @PrimaryKey(autoGenerate: true)
  final int id;

  @ColumnInfo(name: 'first_name')
  final String firstName;

  @ColumnInfo(name: 'last_name')
  final String lastName;

  Person({this.id, this.firstName, this.lastName});

  String get fullName => '$firstName $lastName';

  @override
  String toString() {
    return 'Person{id: $id, firstName: $firstName, lastName: $lastName}';
  }
}
