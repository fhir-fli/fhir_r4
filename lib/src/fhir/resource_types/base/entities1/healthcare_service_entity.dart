import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class HealthcareServiceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'HealthcareService';

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

  bool? active;

  @ToOne()
  PrimitiveElementEntity? activeElement;

  @ToOne()
  ReferenceEntity? providedBy;

  @ToMany()
  List<CodeableConceptEntity>? category;

  @ToMany()
  List<CodeableConceptEntity>? type;

  @ToMany()
  List<CodeableConceptEntity>? specialty;

  @ToMany()
  List<ReferenceEntity>? location;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;

  String? extraDetails;

  @ToOne()
  PrimitiveElementEntity? extraDetailsElement;

  @ToOne()
  AttachmentEntity? photo;

  @ToMany()
  List<ContactPointEntity>? telecom;

  @ToMany()
  List<ReferenceEntity>? coverageArea;

  @ToMany()
  List<CodeableConceptEntity>? serviceProvisionCode;

  @ToMany()
  List<HealthcareServiceEligibilityEntity>? eligibility;

  @ToMany()
  List<CodeableConceptEntity>? program;

  @ToMany()
  List<CodeableConceptEntity>? characteristic;

  @ToMany()
  List<CodeableConceptEntity>? communication;

  @ToMany()
  List<CodeableConceptEntity>? referralMethod;

  bool? appointmentRequired;

  @ToOne()
  PrimitiveElementEntity? appointmentRequiredElement;

  @ToMany()
  List<HealthcareServiceAvailableTimeEntity>? availableTime;

  @ToMany()
  List<HealthcareServiceNotAvailableEntity>? notAvailable;

  String? availabilityExceptions;

  @ToOne()
  PrimitiveElementEntity? availabilityExceptionsElement;

  @ToMany()
  List<ReferenceEntity>? endpoint;
}

class HealthcareServiceEligibilityEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? code;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;
}

class HealthcareServiceAvailableTimeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<HealthcareServiceAvailableTimeDaysOfWeekEntity>? daysOfWeek;

  @ToMany()
  List<PrimitiveElementEntity>? daysOfWeekElement;

  bool? allDay;

  @ToOne()
  PrimitiveElementEntity? allDayElement;

  String? availableStartTime;

  @ToOne()
  PrimitiveElementEntity? availableStartTimeElement;

  String? availableEndTime;

  @ToOne()
  PrimitiveElementEntity? availableEndTimeElement;
}

class HealthcareServiceNotAvailableEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  PeriodEntity? during;
}
