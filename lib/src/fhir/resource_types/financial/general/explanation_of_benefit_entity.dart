import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ExplanationOfBenefitEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ExplanationOfBenefit';

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
  CodeableConceptEntity? fundsReserveRequested;

  @ToOne()
  CodeableConceptEntity? fundsReserve;

  @ToMany()
  List<ExplanationOfBenefitRelatedEntity>? related;

  @ToOne()
  ReferenceEntity? prescription;

  @ToOne()
  ReferenceEntity? originalPrescription;

  @ToOne()
  ExplanationOfBenefitPayeeEntity? payee;

  @ToOne()
  ReferenceEntity? referral;

  @ToOne()
  ReferenceEntity? facility;

  @ToOne()
  ReferenceEntity? claim;

  @ToOne()
  ReferenceEntity? claimResponse;

  String? outcome;

  @ToOne()
  PrimitiveElementEntity? outcomeElement;

  String? disposition;

  @ToOne()
  PrimitiveElementEntity? dispositionElement;

  List<String>? preAuthRef;

  @ToMany()
  List<PrimitiveElementEntity>? preAuthRefElement;

  @ToMany()
  List<PeriodEntity>? preAuthRefPeriod;

  @ToMany()
  List<ExplanationOfBenefitCareTeamEntity>? careTeam;

  @ToMany()
  List<ExplanationOfBenefitSupportingInfoEntity>? supportingInfo;

  @ToMany()
  List<ExplanationOfBenefitDiagnosisEntity>? diagnosis;

  @ToMany()
  List<ExplanationOfBenefitProcedureEntity>? procedure;

  int? precedence;

  @ToOne()
  PrimitiveElementEntity? precedenceElement;

  @ToMany()
  List<ExplanationOfBenefitInsuranceEntity>? insurance;

  @ToOne()
  ExplanationOfBenefitAccidentEntity? accident;

  @ToMany()
  List<ExplanationOfBenefitItemEntity>? item;

  @ToMany()
  List<ExplanationOfBenefitAddItemEntity>? addItem;

  @ToMany()
  List<ExplanationOfBenefitAdjudicationEntity>? adjudication;

  @ToMany()
  List<ExplanationOfBenefitTotalEntity>? total;

  @ToOne()
  ExplanationOfBenefitPaymentEntity? payment;

  @ToOne()
  CodeableConceptEntity? formCode;

  @ToOne()
  AttachmentEntity? form;

  @ToMany()
  List<ExplanationOfBenefitProcessNoteEntity>? processNote;

  @ToOne()
  PeriodEntity? benefitPeriod;

  @ToMany()
  List<ExplanationOfBenefitBenefitBalanceEntity>? benefitBalance;
}

class ExplanationOfBenefitRelatedEntity {
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

class ExplanationOfBenefitPayeeEntity {
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

class ExplanationOfBenefitCareTeamEntity {
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

class ExplanationOfBenefitSupportingInfoEntity {
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
  CodingEntity? reason;
}

class ExplanationOfBenefitDiagnosisEntity {
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

class ExplanationOfBenefitProcedureEntity {
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

class ExplanationOfBenefitInsuranceEntity {
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

  List<String>? preAuthRef;

  @ToMany()
  List<PrimitiveElementEntity>? preAuthRefElement;
}

class ExplanationOfBenefitAccidentEntity {
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

class ExplanationOfBenefitItemEntity {
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

  List<FhirPositiveInt>? noteNumber;

  @ToMany()
  List<PrimitiveElementEntity>? noteNumberElement;

  @ToMany()
  List<ExplanationOfBenefitAdjudicationEntity>? adjudication;

  @ToMany()
  List<ExplanationOfBenefitDetailEntity>? detail;
}

class ExplanationOfBenefitAdjudicationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? category;

  @ToOne()
  CodeableConceptEntity? reason;

  @ToOne()
  MoneyEntity? amount;

  double? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;
}

class ExplanationOfBenefitDetailEntity {
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

  List<FhirPositiveInt>? noteNumber;

  @ToMany()
  List<PrimitiveElementEntity>? noteNumberElement;

  @ToMany()
  List<ExplanationOfBenefitAdjudicationEntity>? adjudication;

  @ToMany()
  List<ExplanationOfBenefitSubDetailEntity>? subDetail;
}

class ExplanationOfBenefitSubDetailEntity {
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

  List<FhirPositiveInt>? noteNumber;

  @ToMany()
  List<PrimitiveElementEntity>? noteNumberElement;

  @ToMany()
  List<ExplanationOfBenefitAdjudicationEntity>? adjudication;
}

class ExplanationOfBenefitAddItemEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  List<FhirPositiveInt>? itemSequence;

  @ToMany()
  List<PrimitiveElementEntity>? itemSequenceElement;

  List<FhirPositiveInt>? detailSequence;

  @ToMany()
  List<PrimitiveElementEntity>? detailSequenceElement;

  List<FhirPositiveInt>? subDetailSequence;

  @ToMany()
  List<PrimitiveElementEntity>? subDetailSequenceElement;

  @ToMany()
  List<ReferenceEntity>? provider;

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

  @ToOne()
  CodeableConceptEntity? bodySite;

  @ToMany()
  List<CodeableConceptEntity>? subSite;

  List<FhirPositiveInt>? noteNumber;

  @ToMany()
  List<PrimitiveElementEntity>? noteNumberElement;

  @ToMany()
  List<ExplanationOfBenefitAdjudicationEntity>? adjudication;

  @ToMany()
  List<ExplanationOfBenefitDetail1Entity>? detail;
}

class ExplanationOfBenefitDetail1Entity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? productOrService;

  @ToMany()
  List<CodeableConceptEntity>? modifier;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  MoneyEntity? unitPrice;

  double? factor;

  @ToOne()
  PrimitiveElementEntity? factorElement;

  @ToOne()
  MoneyEntity? net;

  List<FhirPositiveInt>? noteNumber;

  @ToMany()
  List<PrimitiveElementEntity>? noteNumberElement;

  @ToMany()
  List<ExplanationOfBenefitAdjudicationEntity>? adjudication;

  @ToMany()
  List<ExplanationOfBenefitSubDetail1Entity>? subDetail;
}

class ExplanationOfBenefitSubDetail1Entity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? productOrService;

  @ToMany()
  List<CodeableConceptEntity>? modifier;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  MoneyEntity? unitPrice;

  double? factor;

  @ToOne()
  PrimitiveElementEntity? factorElement;

  @ToOne()
  MoneyEntity? net;

  List<FhirPositiveInt>? noteNumber;

  @ToMany()
  List<PrimitiveElementEntity>? noteNumberElement;

  @ToMany()
  List<ExplanationOfBenefitAdjudicationEntity>? adjudication;
}

class ExplanationOfBenefitTotalEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? category;

  @ToOne()
  MoneyEntity? amount;
}

class ExplanationOfBenefitPaymentEntity {
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
  MoneyEntity? adjustment;

  @ToOne()
  CodeableConceptEntity? adjustmentReason;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  @ToOne()
  MoneyEntity? amount;

  @ToOne()
  IdentifierEntity? identifier;
}

class ExplanationOfBenefitProcessNoteEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? number;

  @ToOne()
  PrimitiveElementEntity? numberElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;

  @ToOne()
  CodeableConceptEntity? language;
}

class ExplanationOfBenefitBenefitBalanceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? category;

  bool? excluded;

  @ToOne()
  PrimitiveElementEntity? excludedElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToOne()
  CodeableConceptEntity? network;

  @ToOne()
  CodeableConceptEntity? unit;

  @ToOne()
  CodeableConceptEntity? term;

  @ToMany()
  List<ExplanationOfBenefitFinancialEntity>? financial;
}

class ExplanationOfBenefitFinancialEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? type;

  int? allowedUnsignedInt;

  @ToOne()
  PrimitiveElementEntity? allowedUnsignedIntElement;

  String? allowedString;

  @ToOne()
  PrimitiveElementEntity? allowedStringElement;

  @ToOne()
  MoneyEntity? allowedMoney;

  int? usedUnsignedInt;

  @ToOne()
  PrimitiveElementEntity? usedUnsignedIntElement;

  @ToOne()
  MoneyEntity? usedMoney;
}
