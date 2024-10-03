import 'package:objectbox/objectbox.dart';
import '../r4_entity.dart';

@Entity()
class ReferenceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  String? reference;

  @ToOne()
  PrimitiveElementEntity? referenceElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  @ToOne()
  IdentifierEntity? identifier;

  String? display;

  @ToOne()
  PrimitiveElementEntity? displayElement;
}
