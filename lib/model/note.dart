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
}
