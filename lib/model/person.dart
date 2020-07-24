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

  @override
  String toString() {
    return 'Person{id: $id, firstName: $firstName, lastName: $lastName, description: $description}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          firstName == other.firstName &&
          lastName == other.lastName &&
          description == other.description;

  @override
  int get hashCode =>
      id.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      description.hashCode;
}
