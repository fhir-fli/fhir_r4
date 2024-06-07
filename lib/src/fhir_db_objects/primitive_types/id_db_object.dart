import 'package:objectbox/objectbox.dart';

@Entity()
class FhirIdDbObject {
  @Id(assignable: true)
  int id;
  String value;

  FhirIdDbObject({this.id = 0, required this.value});
}
