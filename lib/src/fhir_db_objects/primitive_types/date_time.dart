import 'package:objectbox/objectbox.dart';

@Entity()
class FhirDateTimeDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirDateTimeDbObject({this.id = 0, required this.value});
}
