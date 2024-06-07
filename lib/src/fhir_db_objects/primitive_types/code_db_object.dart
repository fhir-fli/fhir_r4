import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirCodeDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirCodeDbObject({this.id = 0, required this.value});
}
