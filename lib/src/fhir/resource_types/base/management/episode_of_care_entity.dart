import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class EpisodeOfCareEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'EpisodeOfCare';

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
  List<EpisodeOfCareStatusHistoryEntity>? statusHistory;

  @ToMany()
  List<CodeableConceptEntity>? type;

  @ToMany()
  List<EpisodeOfCareDiagnosisEntity>? diagnosis;

  @ToOne()
  ReferenceEntity? patient;

  @ToOne()
  ReferenceEntity? managingOrganization;

  @ToOne()
  PeriodEntity? period;

  @ToMany()
  List<ReferenceEntity>? referralRequest;

  @ToOne()
  ReferenceEntity? careManager;

  @ToMany()
  List<ReferenceEntity>? team;

  @ToMany()
  List<ReferenceEntity>? account;
}

class EpisodeOfCareStatusHistoryEntity {
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

class EpisodeOfCareDiagnosisEntity {
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
  CodeableConceptEntity? role;

  int? rank;

  @ToOne()
  PrimitiveElementEntity? rankElement;
}
