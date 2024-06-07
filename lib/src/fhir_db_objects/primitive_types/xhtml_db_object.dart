import 'package:objectbox/objectbox.dart';

@Entity()
class FhirXhtmlDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirXhtmlDbObject({this.id = 0, required this.value});
}
