import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirMarkdownDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirMarkdownDbObject({this.id = 0, required this.value});
}
