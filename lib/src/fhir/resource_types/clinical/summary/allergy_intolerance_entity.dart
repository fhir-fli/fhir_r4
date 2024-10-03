import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class AllergyIntoleranceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'AllergyIntolerance';
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
  @ToOne()
  CodeableConceptEntity? clinicalStatus;
  @ToOne()
  CodeableConceptEntity? verificationStatus;
  String? type;
  @ToOne()
  PrimitiveElementEntity? typeElement;
  List<String>? category;
  @ToMany()
  List<PrimitiveElementEntity>? categoryElement;
  String? criticality;
  @ToOne()
  PrimitiveElementEntity? criticalityElement;
  @ToOne()
  CodeableConceptEntity? code;
  @ToOne()
  ReferenceEntity? patient;
  @ToOne()
  ReferenceEntity? encounter;
  String? onsetDateTime;
  @ToOne()
  PrimitiveElementEntity? onsetDateTimeElement;
  @ToOne()
  AgeEntity? onsetAge;
  @ToOne()
  PeriodEntity? onsetPeriod;
  @ToOne()
  RangeEntity? onsetRange;
  String? onsetString;
  @ToOne()
  PrimitiveElementEntity? onsetStringElement;
  String? recordedDate;
  @ToOne()
  PrimitiveElementEntity? recordedDateElement;
  @ToOne()
  ReferenceEntity? recorder;
  @ToOne()
  ReferenceEntity? asserter;
  String? lastOccurrence;
  @ToOne()
  PrimitiveElementEntity? lastOccurrenceElement;
  @ToMany()
  List<AnnotationEntity>? note;
  @ToMany()
  List<AllergyIntoleranceReactionEntity>? reaction;
}

class AllergyIntoleranceReactionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? substance;
  @ToMany()
  List<CodeableConceptEntity>? manifestation;
  String? description;
  @ToOne()
  PrimitiveElementEntity? descriptionElement;
  String? onset;
  @ToOne()
  PrimitiveElementEntity? onsetElement;
  String? severity;
  @ToOne()
  PrimitiveElementEntity? severityElement;
  @ToOne()
  CodeableConceptEntity? exposureRoute;
  @ToMany()
  List<AnnotationEntity>? note;
}
