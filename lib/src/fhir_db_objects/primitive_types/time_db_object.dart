import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirTimeDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirTimeDbObject({this.id = 0, required this.value});
}
