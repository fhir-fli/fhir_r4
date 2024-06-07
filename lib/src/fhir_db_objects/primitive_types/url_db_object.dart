import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirUrlDbObject {
  @Id(assignable: true)
  int id;
  Uri value;

  FhirUrlDbObject({this.id = 0, required this.value});
}
