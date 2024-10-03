import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class EncounterEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Encounter';

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

  @ToMany()
  List<EncounterStatusHistoryEntity>? statusHistory;

  @ToOne()
  CodingEntity? class_;

  @ToMany()
  List<EncounterClassHistoryEntity>? classHistory;

  @ToMany()
  List<CodeableConceptEntity>? type;

  @ToOne()
  CodeableConceptEntity? serviceType;

  @ToOne()
  CodeableConceptEntity? priority;

  @ToOne()
  ReferenceEntity? subject;

  @ToMany()
  List<ReferenceEntity>? episodeOfCare;

  @ToMany()
  List<ReferenceEntity>? basedOn;

  @ToMany()
  List<EncounterParticipantEntity>? participant;

  @ToMany()
  List<ReferenceEntity>? appointment;

  @ToOne()
  PeriodEntity? period;

  @ToOne()
  FhirDurationEntity? length;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  @ToMany()
  List<EncounterDiagnosisEntity>? diagnosis;

  @ToMany()
  List<ReferenceEntity>? account;

  @ToOne()
  EncounterHospitalizationEntity? hospitalization;

  @ToMany()
  List<EncounterLocationEntity>? location;

  @ToOne()
  ReferenceEntity? serviceProvider;

  @ToOne()
  ReferenceEntity? partOf;
}

class EncounterStatusHistoryEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  PeriodEntity? period;
}

class EncounterClassHistoryEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodingEntity? class_;

  @ToOne()
  PeriodEntity? period;
}

class EncounterParticipantEntity {
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
  PeriodEntity? period;

  @ToOne()
  ReferenceEntity? individual;
}

class EncounterDiagnosisEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? condition;

  @ToOne()
  CodeableConceptEntity? use;

  int? rank;

  @ToOne()
  PrimitiveElementEntity? rankElement;
}

class EncounterHospitalizationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  IdentifierEntity? preAdmissionIdentifier;

  @ToOne()
  ReferenceEntity? origin;

  @ToOne()
  CodeableConceptEntity? admitSource;

  @ToOne()
  CodeableConceptEntity? reAdmission;

  @ToMany()
  List<CodeableConceptEntity>? dietPreference;

  @ToMany()
  List<CodeableConceptEntity>? specialCourtesy;

  @ToMany()
  List<CodeableConceptEntity>? specialArrangement;

  @ToOne()
  ReferenceEntity? destination;

  @ToOne()
  CodeableConceptEntity? dischargeDisposition;
}

class EncounterLocationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? location;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? physicalType;

  @ToOne()
  PeriodEntity? period;
}
