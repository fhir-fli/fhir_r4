import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirPositiveIntDbObject {
  @Id(assignable: true)
  int id;
  int value;

  FhirPositiveIntDbObject({this.id = 0, required this.value});
}
