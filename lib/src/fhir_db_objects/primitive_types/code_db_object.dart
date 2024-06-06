import 'package:objectbox/objectbox.dart';

@Entity()
class FhirCodeDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirCodeDbObject({this.id = 0, required this.value});
}
