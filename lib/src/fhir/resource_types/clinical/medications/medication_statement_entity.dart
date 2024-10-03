import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class MedicationStatementEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'MedicationStatement';

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

  @ToMany()
  List<ReferenceEntity>? basedOn;

  @ToMany()
  List<ReferenceEntity>? partOf;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToMany()
  List<CodeableConceptEntity>? statusReason;

  @ToOne()
  CodeableConceptEntity? category;

  @ToOne()
  CodeableConceptEntity? medicationCodeableConcept;

  @ToOne()
  ReferenceEntity? medicationReference;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? context;

  String? effectiveDateTime;

  @ToOne()
  PrimitiveElementEntity? effectiveDateTimeElement;

  @ToOne()
  PeriodEntity? effectivePeriod;

  String? dateAsserted;

  @ToOne()
  PrimitiveElementEntity? dateAssertedElement;

  @ToOne()
  ReferenceEntity? informationSource;

  @ToMany()
  List<ReferenceEntity>? derivedFrom;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<DosageEntity>? dosage;
}
