import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ProcedureEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Procedure';
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
  @ToMany()
  List<ReferenceEntity>? basedOn;
  @ToMany()
  List<ReferenceEntity>? partOf;
  String? status;
  @ToOne()
  PrimitiveElementEntity? statusElement;
  @ToOne()
  CodeableConceptEntity? statusReason;
  @ToOne()
  CodeableConceptEntity? category;
  @ToOne()
  CodeableConceptEntity? code;
  @ToOne()
  ReferenceEntity? subject;
  @ToOne()
  ReferenceEntity? encounter;
  String? performedDateTime;

  @ToOne()
  PrimitiveElementEntity? performedDateTimeElement;
  @ToOne()
  PeriodEntity? performedPeriod;
  String? performedString;
  @ToOne()
  PrimitiveElementEntity? performedStringElement;
  @ToOne()
  AgeEntity? performedAge;
  @ToOne()
  RangeEntity? performedRange;
  @ToOne()
  ReferenceEntity? recorder;
  @ToOne()
  ReferenceEntity? asserter;
  @ToMany()
  List<ProcedurePerformerEntity>? performer;
  @ToOne()
  ReferenceEntity? location;
  @ToMany()
  List<CodeableConceptEntity>? reasonCode;
  @ToMany()
  List<ReferenceEntity>? reasonReference;
  @ToMany()
  List<CodeableConceptEntity>? bodySite;
  @ToOne()
  CodeableConceptEntity? outcome;
  @ToMany()
  List<ReferenceEntity>? report;
  @ToMany()
  List<CodeableConceptEntity>? complication;
  @ToMany()
  List<ReferenceEntity>? complicationDetail;
  @ToMany()
  List<CodeableConceptEntity>? followUp;
  @ToMany()
  List<AnnotationEntity>? note;
  @ToMany()
  List<ProcedureFocalDeviceEntity>? focalDevice;
  @ToMany()
  List<ReferenceEntity>? usedReference;
  @ToMany()
  List<CodeableConceptEntity>? usedCode;
}

class ProcedurePerformerEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? function;
  @ToOne()
  ReferenceEntity? actor;
  @ToOne()
  ReferenceEntity? onBehalfOf;
}

class ProcedureFocalDeviceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;
  @ToMany()
  List<FhirExtensionEntity>? extension_;
  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;
  @ToOne()
  CodeableConceptEntity? action;
  @ToOne()
  ReferenceEntity? manipulated;
}
