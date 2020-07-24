import 'package:floor/floor.dart';
import 'package:holder/model/person.dart';

@Entity(
  tableName: 'note',
  foreignKeys: [
    ForeignKey(
      childColumns: ['person_id'],
      parentColumns: ['id'],
      entity: Person,
    )
  ],
)
class Note {
  @PrimaryKey(autoGenerate: true)
  final int id;

  @ColumnInfo(name: 'person_id')
  final int personId;

  final String content;

  Note({this.id, this.personId, this.content});

  @override
  String toString() {
    return 'Note{id: $id, personId: $personId, content: $content}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Note &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          personId == other.personId &&
          content == other.content;

  @override
  int get hashCode => id.hashCode ^ personId.hashCode ^ content.hashCode;
}
