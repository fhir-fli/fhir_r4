import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class FamilyMemberHistoryEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'FamilyMemberHistory';
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
  List<String>? instantiatesCanonical;
  List<FhirUri>? instantiatesUri;

  @ToMany()
  List<PrimitiveElementEntity>? instantiatesUriElement;
  String? status;
  @ToOne()
  PrimitiveElementEntity? statusElement;
  @ToOne()
  CodeableConceptEntity? dataAbsentReason;
  @ToOne()
  ReferenceEntity? patient;
  String? date;
  @ToOne()
  PrimitiveElementEntity? dateElement;
  String? name;
  @ToOne()
  PrimitiveElementEntity? nameElement;
  @ToOne()
  CodeableConceptEntity? relationship;
  @ToOne()
  CodeableConceptEntity? sex;
  @ToOne()
  PeriodEntity? bornPeriod;
  String? bornDate;
  @ToOne()
  PrimitiveElementEntity? bornDateElement;
  String? bornString;
  @ToOne()
  PrimitiveElementEntity? bornStringElement;
  @ToOne()
  AgeEntity? ageAge;
  @ToOne()
  RangeEntity? ageRange;
  String? ageString;
  @ToOne()
  PrimitiveElementEntity? ageStringElement;
  bool? estimatedAge;
  @ToOne()
  PrimitiveElementEntity? estimatedAgeElement;
  bool? deceasedBoolean;
  @ToOne()
  PrimitiveElementEntity? deceasedBooleanElement;
  @ToOne()
  AgeEntity? deceasedAge;
  @ToOne()
  RangeEntity? deceasedRange;
  String? deceasedDate;
  @ToOne()
  PrimitiveElementEntity? deceasedDateElement;
  String? deceasedString;
  @ToOne()
  PrimitiveElementEntity? deceasedStringElement;
  @ToMany()
  List<CodeableConceptEntity>? reasonCode;
  @ToMany()
  List<ReferenceEntity>? reasonReference;
  @ToMany()
  List<AnnotationEntity>? note;
  @ToMany()
  List<FamilyMemberHistoryConditionEntity>? condition;
}

class FamilyMemberHistoryConditionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? code;
  @ToOne()
  CodeableConceptEntity? outcome;
  bool? contributedToDeath;

  @ToOne()
  PrimitiveElementEntity? contributedToDeathElement;
  @ToOne()
  AgeEntity? onsetAge;
  @ToOne()
  RangeEntity? onsetRange;
  @ToOne()
  PeriodEntity? onsetPeriod;
  String? onsetString;
  @ToOne()
  PrimitiveElementEntity? onsetStringElement;
  @ToMany()
  List<AnnotationEntity>? note;
}
