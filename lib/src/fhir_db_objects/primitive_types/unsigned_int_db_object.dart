import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirUnsignedIntDbObject {
  @Id(assignable: true)
  int id;
  int value;

  FhirUnsignedIntDbObject({this.id = 0, required this.value});
}
