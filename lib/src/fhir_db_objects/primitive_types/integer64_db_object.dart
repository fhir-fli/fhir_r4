import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirInteger64DbObject {
  @Id(assignable: true)
  int id;
  BigInt value;

  FhirInteger64DbObject({this.id = 0, required this.value});
}
