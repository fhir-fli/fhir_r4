import 'package:objectbox/objectbox.dart';

@Entity()
class FhirBooleanDbObject {
  @Id(assignable: true)
  int id;
  bool value;

  FhirBooleanDbObject({this.id = 0, required this.value});
}
