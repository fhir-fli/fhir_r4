import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class EnrollmentRequestEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'EnrollmentRequest';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? created;

  @ToOne()
  PrimitiveElementEntity? createdElement;

  @ToOne()
  ReferenceEntity? insurer;

  @ToOne()
  ReferenceEntity? provider;

  @ToOne()
  ReferenceEntity? candidate;

  @ToOne()
  ReferenceEntity? coverage;
}
