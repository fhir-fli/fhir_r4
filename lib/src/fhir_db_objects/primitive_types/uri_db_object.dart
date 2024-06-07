import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirUriDbObject {
  @Id(assignable: true)
  int id;
  Uri value;

  FhirUriDbObject({this.id = 0, required this.value});
}
