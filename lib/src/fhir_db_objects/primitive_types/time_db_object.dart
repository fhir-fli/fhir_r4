import 'package:objectbox/objectbox.dart';

@Entity()
class FhirTimeDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirTimeDbObject({this.id = 0, required this.value});
}
