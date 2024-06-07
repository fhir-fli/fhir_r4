import 'package:objectbox/objectbox.dart';

@Entity()
class FhirMarkdownDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirMarkdownDbObject({this.id = 0, required this.value});
}
