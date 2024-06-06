import 'package:objectbox/objectbox.dart';

@Entity()
class FhirUriDbObject {
  @Id(assignable: true)
  int id;
  Uri value;

  FhirUriDbObject({this.id = 0, required this.value});
}
