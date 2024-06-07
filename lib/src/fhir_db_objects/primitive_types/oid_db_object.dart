import 'package:objectbox/objectbox.dart';

@Entity()
class FhirOidDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirOidDbObject({this.id = 0, required this.value});
}
