import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class CoverageEligibilityRequestEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'CoverageEligibilityRequest';

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
  CodeableConceptEntity? priority;

  List<String>? purpose;

  @ToMany()
  List<PrimitiveElementEntity>? purposeElement;

  @ToOne()
  ReferenceEntity? patient;

  String? servicedDate;

  @ToOne()
  PrimitiveElementEntity? servicedDateElement;

  @ToOne()
  PeriodEntity? servicedPeriod;

  String? created;

  @ToOne()
  PrimitiveElementEntity? createdElement;

  @ToOne()
  ReferenceEntity? enterer;

  @ToOne()
  ReferenceEntity? provider;

  @ToOne()
  ReferenceEntity? insurer;

  @ToOne()
  ReferenceEntity? facility;

  @ToMany()
  List<CoverageEligibilityRequestSupportingInfoEntity>? supportingInfo;

  @ToMany()
  List<CoverageEligibilityRequestInsuranceEntity>? insurance;

  @ToMany()
  List<CoverageEligibilityRequestItemEntity>? item;
}

class CoverageEligibilityRequestSupportingInfoEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? sequence;

  @ToOne()
  PrimitiveElementEntity? sequenceElement;

  @ToOne()
  ReferenceEntity? information;

  bool? appliesToAll;

  @ToOne()
  PrimitiveElementEntity? appliesToAllElement;
}

class CoverageEligibilityRequestInsuranceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? focal;

  @ToOne()
  PrimitiveElementEntity? focalElement;

  @ToOne()
  ReferenceEntity? coverage;

  String? businessArrangement;

  @ToOne()
  PrimitiveElementEntity? businessArrangementElement;
}

class CoverageEligibilityRequestItemEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  List<FhirPositiveInt>? supportingInfoSequence;

  @ToMany()
  List<PrimitiveElementEntity>? supportingInfoSequenceElement;

  @ToOne()
  CodeableConceptEntity? category;

  @ToOne()
  CodeableConceptEntity? productOrService;

  @ToMany()
  List<CodeableConceptEntity>? modifier;

  @ToOne()
  ReferenceEntity? provider;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  MoneyEntity? unitPrice;

  @ToOne()
  ReferenceEntity? facility;

  @ToMany()
  List<CoverageEligibilityRequestDiagnosisEntity>? diagnosis;

  @ToMany()
  List<ReferenceEntity>? detail;
}

class CoverageEligibilityRequestDiagnosisEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? diagnosisCodeableConcept;

  @ToOne()
  ReferenceEntity? diagnosisReference;
}
