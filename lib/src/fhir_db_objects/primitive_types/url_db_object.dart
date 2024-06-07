import 'package:objectbox/objectbox.dart';

@Entity()
class FhirUrlDbObject {
  @Id(assignable: true)
  int id;
  Uri value;

  FhirUrlDbObject({this.id = 0, required this.value});
}
