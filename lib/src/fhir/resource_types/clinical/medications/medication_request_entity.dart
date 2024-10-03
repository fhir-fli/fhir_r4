import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class MedicationRequestEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'MedicationRequest';

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
  CodeableConceptEntity? statusReason;

  String? intent;

  @ToOne()
  PrimitiveElementEntity? intentElement;

  @ToMany()
  List<CodeableConceptEntity>? category;

  String? priority;

  @ToOne()
  PrimitiveElementEntity? priorityElement;

  bool? doNotPerform;

  @ToOne()
  PrimitiveElementEntity? doNotPerformElement;

  bool? reportedBoolean;

  @ToOne()
  PrimitiveElementEntity? reportedBooleanElement;

  @ToOne()
  ReferenceEntity? reportedReference;

  @ToOne()
  CodeableConceptEntity? medicationCodeableConcept;

  @ToOne()
  ReferenceEntity? medicationReference;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? encounter;

  @ToMany()
  List<ReferenceEntity>? supportingInformation;

  String? authoredOn;

  @ToOne()
  PrimitiveElementEntity? authoredOnElement;

  @ToOne()
  ReferenceEntity? requester;

  @ToOne()
  ReferenceEntity? performer;

  @ToOne()
  CodeableConceptEntity? performerType;

  @ToOne()
  ReferenceEntity? recorder;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  List<String>? instantiatesCanonical;

  @ToMany()
  List<PrimitiveElementEntity>? instantiatesCanonicalElement;

  List<FhirUri>? instantiatesUri;

  @ToMany()
  List<PrimitiveElementEntity>? instantiatesUriElement;

  @ToMany()
  List<ReferenceEntity>? basedOn;

  @ToOne()
  IdentifierEntity? groupIdentifier;

  @ToOne()
  CodeableConceptEntity? courseOfTherapyType;

  @ToMany()
  List<ReferenceEntity>? insurance;

  @ToMany()
  List<AnnotationEntity>? note;

  @ToMany()
  List<DosageEntity>? dosageInstruction;

  @ToOne()
  MedicationRequestDispenseRequestEntity? dispenseRequest;

  @ToOne()
  MedicationRequestSubstitutionEntity? substitution;

  @ToOne()
  ReferenceEntity? priorPrescription;

  @ToMany()
  List<ReferenceEntity>? detectedIssue;

  @ToMany()
  List<ReferenceEntity>? eventHistory;
}

class MedicationRequestDispenseRequestEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  MedicationRequestInitialFillEntity? initialFill;

  @ToOne()
  FhirDurationEntity? dispenseInterval;

  @ToOne()
  PeriodEntity? validityPeriod;

  int? numberOfRepeatsAllowed;

  @ToOne()
  PrimitiveElementEntity? numberOfRepeatsAllowedElement;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  FhirDurationEntity? expectedSupplyDuration;

  @ToOne()
  ReferenceEntity? performer;
}

class MedicationRequestInitialFillEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  FhirDurationEntity? duration;
}

class MedicationRequestSubstitutionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? allowedBoolean;

  @ToOne()
  PrimitiveElementEntity? allowedBooleanElement;

  @ToOne()
  CodeableConceptEntity? allowedCodeableConcept;

  @ToOne()
  CodeableConceptEntity? reason;
}
