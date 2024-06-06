import 'package:objectbox/objectbox.dart';

@Entity()
class FhirInteger64DbObject {
  @Id(assignable: true)
  int id;
  BigInt value;

  FhirInteger64DbObject({this.id = 0, required this.value});
}
