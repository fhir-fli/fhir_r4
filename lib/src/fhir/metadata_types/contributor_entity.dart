import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class ContributorEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToOne()
  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToMany()
  List<ContactDetailEntity>? contact;
}
