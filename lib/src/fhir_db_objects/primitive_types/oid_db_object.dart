import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirOidDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirOidDbObject({this.id = 0, required this.value});
}
