import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class AppointmentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Appointment';

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

  @ToOne()
  CodeableConceptEntity? cancelationReason;

  @ToMany()
  List<CodeableConceptEntity>? serviceCategory;

  @ToMany()
  List<CodeableConceptEntity>? serviceType;

  @ToMany()
  List<CodeableConceptEntity>? specialty;

  @ToOne()
  CodeableConceptEntity? appointmentType;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  int? priority;

  @ToOne()
  PrimitiveElementEntity? priorityElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<ReferenceEntity>? supportingInformation;

  String? start;

  @ToOne()
  PrimitiveElementEntity? startElement;

  String? end;

  @ToOne()
  PrimitiveElementEntity? endElement;

  int? minutesDuration;

  @ToOne()
  PrimitiveElementEntity? minutesDurationElement;

  @ToMany()
  List<ReferenceEntity>? slot;

  String? created;

  @ToOne()
  PrimitiveElementEntity? createdElement;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;

  String? patientInstruction;

  @ToOne()
  PrimitiveElementEntity? patientInstructionElement;

  @ToMany()
  List<ReferenceEntity>? basedOn;

  @ToMany()
  List<AppointmentParticipantEntity>? participant;

  @ToMany()
  List<PeriodEntity>? requestedPeriod;
}

class AppointmentParticipantEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<CodeableConceptEntity>? type;

  @ToOne()
  ReferenceEntity? actor;

  String? required_;

  @ToOne()
  PrimitiveElementEntity? requiredElement;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  PeriodEntity? period;
}
