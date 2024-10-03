import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class ContactDetailEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToMany()
  List<ContactPointEntity>? telecom;
}
