import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirIdDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirIdDbObject({this.id = 0, required this.value});
}
