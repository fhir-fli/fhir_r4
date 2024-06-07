import 'package:objectbox/objectbox.dart';

@Entity()
class FhirInstantDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirInstantDbObject({this.id = 0, required this.value});
}
