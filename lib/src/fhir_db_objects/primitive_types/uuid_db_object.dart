import 'package:objectbox/objectbox.dart';

@Entity()
class FhirUuidDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirUuidDbObject({this.id = 0, required this.value});
}
