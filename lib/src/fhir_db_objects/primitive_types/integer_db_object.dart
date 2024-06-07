import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirIntegerDbObject {
  @Id(assignable: true)
  int id;
  int value;

  FhirIntegerDbObject({this.id = 0, required this.value});
}
