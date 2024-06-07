import 'package:objectbox/objectbox.dart';

@Entity()
class ResourceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<Map<String, dynamic>> resourceType =
      ToOne<Map<String, dynamic>>();

  ResourceDbObject({required this.id});
}
