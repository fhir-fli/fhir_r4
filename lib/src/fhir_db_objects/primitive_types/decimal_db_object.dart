import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirDecimalDbObject {
  @Id(assignable: true)
  int id;
  double value;

  FhirDecimalDbObject({this.id = 0, required this.value});
}
