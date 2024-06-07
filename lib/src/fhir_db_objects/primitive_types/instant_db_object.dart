import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirInstantDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirInstantDbObject({this.id = 0, required this.value});
}
