import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirUuidDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirUuidDbObject({this.id = 0, required this.value});
}
