import 'package:objectbox/objectbox.dart';

@Entity()
class FhirDateDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirDateDbObject({this.id = 0, required this.value});
}
