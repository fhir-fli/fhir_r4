import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class StringDbObject {
  @Id(assignable: true)
  int id;
  String value;

  StringDbObject({this.id = 0, required this.value});
}
