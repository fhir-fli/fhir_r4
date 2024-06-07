import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirDateTimeDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirDateTimeDbObject({this.id = 0, required this.value});
}
