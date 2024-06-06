import 'package:objectbox/objectbox.dart';

@Entity()
class FhirCanonicalDbObject {
  @Id(assignable: true)
  int id;
  Uri value;

  FhirCanonicalDbObject({this.id = 0, required this.value});
}
