import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class PractitionerRoleEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'PractitionerRole';

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
  PeriodEntity? period;

  @ToOne()
  ReferenceEntity? practitioner;

  @ToOne()
  ReferenceEntity? organization;

  @ToMany()
  List<CodeableConceptEntity>? code;

  @ToMany()
  List<CodeableConceptEntity>? specialty;

  @ToMany()
  List<ReferenceEntity>? location;

  @ToMany()
  List<ReferenceEntity>? healthcareService;

  @ToMany()
  List<ContactPointEntity>? telecom;

  @ToMany()
  List<PractitionerRoleAvailableTimeEntity>? availableTime;

  @ToMany()
  List<PractitionerRoleNotAvailableEntity>? notAvailable;

  String? availabilityExceptions;

  @ToOne()
  PrimitiveElementEntity? availabilityExceptionsElement;

  @ToMany()
  List<ReferenceEntity>? endpoint;
}

class PractitionerRoleAvailableTimeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  List<String>? daysOfWeek;

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

class PractitionerRoleNotAvailableEntity {
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
