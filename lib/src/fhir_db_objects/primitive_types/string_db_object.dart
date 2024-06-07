import 'package:objectbox/objectbox.dart';

@Entity()
class StringDbObject {
  @Id(assignable: true)
  int id;
  String value;

  StringDbObject({this.id = 0, required this.value});
}
