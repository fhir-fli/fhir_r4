import 'package:objectbox/objectbox.dart';

@Entity()
abstract class Resource {
  @Id()
  int? dbId;
}
