import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class MedicationAdministrationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'MedicationAdministration';

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

  List<FhirUri>? instantiates;

  @ToMany()
  List<PrimitiveElementEntity>? instantiatesElement;

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

  @ToMany()
  List<ReferenceEntity>? supportingInformation;

  String? effectiveDateTime;

  @ToOne()
  PrimitiveElementEntity? effectiveDateTimeElement;

  @ToOne()
  PeriodEntity? effectivePeriod;

  @ToMany()
  List<MedicationAdministrationPerformerEntity>? performer;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToOne()
  ReferenceEntity? request;

  @ToMany()
  List<ReferenceEntity>? device;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToOne()
  MedicationAdministrationDosageEntity? dosage;

  @ToMany()
  List<ReferenceEntity>? eventHistory;
}

class MedicationAdministrationPerformerEntity {
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
}

class MedicationAdministrationDosageEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;

  @ToOne()
  CodeableConceptEntity? site;

  @ToOne()
  CodeableConceptEntity? route;

  @ToOne()
  CodeableConceptEntity? method;

  @ToOne()
  QuantityEntity? dose;

  @ToOne()
  RatioEntity? rateRatio;

  @ToOne()
  QuantityEntity? rateQuantity;
}
