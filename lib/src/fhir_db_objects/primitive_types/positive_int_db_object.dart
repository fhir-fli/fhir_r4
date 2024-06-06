import 'package:objectbox/objectbox.dart';

@Entity()
class FhirPositiveIntDbObject {
  @Id(assignable: true)
  int id;
  int value;

  FhirPositiveIntDbObject({this.id = 0, required this.value});
}
