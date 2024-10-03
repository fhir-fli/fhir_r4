import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ClaimEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Claim';

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
  CodeableConceptEntity? type;

  @ToOne()
  CodeableConceptEntity? subType;

  String? use;

  @ToOne()
  PrimitiveElementEntity? useElement;

  @ToOne()
  ReferenceEntity? patient;

  @ToOne()
  PeriodEntity? billablePeriod;

  String? created;

  @ToOne()
  PrimitiveElementEntity? createdElement;

  @ToOne()
  ReferenceEntity? enterer;

  @ToOne()
  ReferenceEntity? insurer;

  @ToOne()
  ReferenceEntity? provider;

  @ToOne()
  CodeableConceptEntity? priority;

  @ToOne()
  CodeableConceptEntity? fundsReserve;

  @ToMany()
  List<ClaimRelatedEntity>? related;

  @ToOne()
  ReferenceEntity? prescription;

  @ToOne()
  ReferenceEntity? originalPrescription;

  @ToOne()
  ClaimPayeeEntity? payee;

  @ToOne()
  ReferenceEntity? referral;

  @ToOne()
  ReferenceEntity? facility;

  @ToMany()
  List<ClaimCareTeamEntity>? careTeam;

  @ToMany()
  List<ClaimSupportingInfoEntity>? supportingInfo;

  @ToMany()
  List<ClaimDiagnosisEntity>? diagnosis;

  @ToMany()
  List<ClaimProcedureEntity>? procedure;

  @ToMany()
  List<ClaimInsuranceEntity>? insurance;

  @ToOne()
  ClaimAccidentEntity? accident;

  @ToMany()
  List<ClaimItemEntity>? item;

  @ToOne()
  MoneyEntity? total;
}

class ClaimRelatedEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? claim;

  @ToOne()
  CodeableConceptEntity? relationship;

  @ToOne()
  IdentifierEntity? reference;
}

class ClaimPayeeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  ReferenceEntity? party;
}

class ClaimCareTeamEntity {
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
  ReferenceEntity? provider;

  bool? responsible;

  @ToOne()
  PrimitiveElementEntity? responsibleElement;

  @ToOne()
  CodeableConceptEntity? role;

  @ToOne()
  CodeableConceptEntity? qualification;
}

class ClaimSupportingInfoEntity {
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
  CodeableConceptEntity? category;

  @ToOne()
  CodeableConceptEntity? code;

  String? timingDate;

  @ToOne()
  PrimitiveElementEntity? timingDateElement;

  @ToOne()
  PeriodEntity? timingPeriod;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;

  String? valueString;

  @ToOne()
  PrimitiveElementEntity? valueStringElement;

  @ToOne()
  QuantityEntity? valueQuantity;

  @ToOne()
  AttachmentEntity? valueAttachment;

  @ToOne()
  ReferenceEntity? valueReference;

  @ToOne()
  CodeableConceptEntity? reason;
}

class ClaimDiagnosisEntity {
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
  CodeableConceptEntity? diagnosisCodeableConcept;

  @ToOne()
  ReferenceEntity? diagnosisReference;

  @ToMany()
  List<CodeableConceptEntity>? type;

  @ToOne()
  CodeableConceptEntity? onAdmission;

  @ToOne()
  CodeableConceptEntity? packageCode;
}

class ClaimProcedureEntity {
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

  @ToMany()
  List<CodeableConceptEntity>? type;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  @ToOne()
  CodeableConceptEntity? procedureCodeableConcept;

  @ToOne()
  ReferenceEntity? procedureReference;

  @ToMany()
  List<ReferenceEntity>? udi;
}

class ClaimInsuranceEntity {
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

  bool? focal;

  @ToOne()
  PrimitiveElementEntity? focalElement;

  @ToOne()
  IdentifierEntity? identifier;

  @ToOne()
  ReferenceEntity? coverage;

  String? businessArrangement;

  @ToOne()
  PrimitiveElementEntity? businessArrangementElement;

  List<String>? preAuthRef;

  @ToMany()
  List<PrimitiveElementEntity>? preAuthRefElement;

  @ToOne()
  ReferenceEntity? claimResponse;
}

class ClaimAccidentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  AddressEntity? locationAddress;

  @ToOne()
  ReferenceEntity? locationReference;
}

class ClaimItemEntity {
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

  List<FhirPositiveInt>? careTeamSequence;

  @ToMany()
  List<PrimitiveElementEntity>? careTeamSequenceElement;

  List<FhirPositiveInt>? diagnosisSequence;

  @ToMany()
  List<PrimitiveElementEntity>? diagnosisSequenceElement;

  List<FhirPositiveInt>? procedureSequence;

  @ToMany()
  List<PrimitiveElementEntity>? procedureSequenceElement;

  List<FhirPositiveInt>? informationSequence;

  @ToMany()
  List<PrimitiveElementEntity>? informationSequenceElement;

  @ToOne()
  CodeableConceptEntity? revenue;

  @ToOne()
  CodeableConceptEntity? category;

  @ToOne()
  CodeableConceptEntity? productOrService;

  @ToMany()
  List<CodeableConceptEntity>? modifier;

  @ToMany()
  List<CodeableConceptEntity>? programCode;

  String? servicedDate;

  @ToOne()
  PrimitiveElementEntity? servicedDateElement;

  @ToOne()
  PeriodEntity? servicedPeriod;

  @ToOne()
  CodeableConceptEntity? locationCodeableConcept;

  @ToOne()
  AddressEntity? locationAddress;

  @ToOne()
  ReferenceEntity? locationReference;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  MoneyEntity? unitPrice;

  double? factor;

  @ToOne()
  PrimitiveElementEntity? factorElement;

  @ToOne()
  MoneyEntity? net;

  @ToMany()
  List<ReferenceEntity>? udi;

  @ToOne()
  CodeableConceptEntity? bodySite;

  @ToMany()
  List<CodeableConceptEntity>? subSite;

  @ToMany()
  List<ReferenceEntity>? encounter;

  @ToMany()
  List<ClaimDetailEntity>? detail;
}

class ClaimDetailEntity {
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
  CodeableConceptEntity? revenue;

  @ToOne()
  CodeableConceptEntity? category;

  @ToOne()
  CodeableConceptEntity? productOrService;

  @ToMany()
  List<CodeableConceptEntity>? modifier;

  @ToMany()
  List<CodeableConceptEntity>? programCode;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  MoneyEntity? unitPrice;

  double? factor;

  @ToOne()
  PrimitiveElementEntity? factorElement;

  @ToOne()
  MoneyEntity? net;

  @ToMany()
  List<ReferenceEntity>? udi;

  @ToMany()
  List<ClaimSubDetailEntity>? subDetail;
}

class ClaimSubDetailEntity {
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
  CodeableConceptEntity? revenue;

  @ToOne()
  CodeableConceptEntity? category;

  @ToOne()
  CodeableConceptEntity? productOrService;

  @ToMany()
  List<CodeableConceptEntity>? modifier;

  @ToMany()
  List<CodeableConceptEntity>? programCode;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  MoneyEntity? unitPrice;

  double? factor;

  @ToOne()
  PrimitiveElementEntity? factorElement;

  @ToOne()
  MoneyEntity? net;

  @ToMany()
  List<ReferenceEntity>? udi;
}
