import 'package:objectbox/objectbox.dart';

@Entity()
class FhirDecimalDbObject {
  @Id(assignable: true)
  int id;
  double value;

  FhirDecimalDbObject({this.id = 0, required this.value});
}
