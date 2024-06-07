import 'package:objectbox/objectbox.dart';

@Entity()
class FhirBase64BinaryDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirBase64BinaryDbObject({this.id = 0, required this.value});
}
