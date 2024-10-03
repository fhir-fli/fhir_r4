import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class GuidanceResponseEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'GuidanceResponse';

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

  @ToOne()
  IdentifierEntity? requestIdentifier;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? moduleUri;

  @ToOne()
  PrimitiveElementEntity? moduleUriElement;

  String? moduleCanonical;

  @ToOne()
  PrimitiveElementEntity? moduleCanonicalElement;

  @ToOne()
  CodeableConceptEntity? moduleCodeableConcept;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? encounter;

  String? occurrenceDateTime;

  @ToOne()
  PrimitiveElementEntity? occurrenceDateTimeElement;

  @ToOne()
  ReferenceEntity? performer;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<ReferenceEntity>? evaluationMessage;

  @ToOne()
  ReferenceEntity? outputParameters;

  @ToOne()
  ReferenceEntity? result;

  @ToMany()
  List<DataRequirementEntity>? dataRequirement;
}
