import 'package:objectbox/objectbox.dart';

@Entity()
class FhirIntegerDbObject {
  @Id(assignable: true)
  int id;
  int value;

  FhirIntegerDbObject({this.id = 0, required this.value});
}
