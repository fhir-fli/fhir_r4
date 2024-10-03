import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ClaimResponseEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ClaimResponse';

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

  String? created;

  @ToOne()
  PrimitiveElementEntity? createdElement;

  @ToOne()
  ReferenceEntity? insurer;

  @ToOne()
  ReferenceEntity? requestor;

  @ToOne()
  ReferenceEntity? request;

  String? outcome;

  @ToOne()
  PrimitiveElementEntity? outcomeElement;

  String? disposition;

  @ToOne()
  PrimitiveElementEntity? dispositionElement;

  String? preAuthRef;

  @ToOne()
  PrimitiveElementEntity? preAuthRefElement;

  @ToOne()
  PeriodEntity? preAuthPeriod;

  @ToOne()
  CodeableConceptEntity? payeeType;

  @ToMany()
  List<ClaimResponseItemEntity>? item;

  @ToMany()
  List<ClaimResponseAddItemEntity>? addItem;

  @ToMany()
  List<ClaimResponseAdjudicationEntity>? adjudication;

  @ToMany()
  List<ClaimResponseTotalEntity>? total;

  @ToOne()
  ClaimResponsePaymentEntity? payment;

  @ToOne()
  CodeableConceptEntity? fundsReserve;

  @ToOne()
  CodeableConceptEntity? formCode;

  @ToOne()
  AttachmentEntity? form;

  @ToMany()
  List<ClaimResponseProcessNoteEntity>? processNote;

  @ToMany()
  List<ReferenceEntity>? communicationRequest;

  @ToMany()
  List<ClaimResponseInsuranceEntity>? insurance;

  @ToMany()
  List<ClaimResponseErrorEntity>? error;
}

class ClaimResponseItemEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? itemSequence;

  @ToOne()
  PrimitiveElementEntity? itemSequenceElement;

  List<FhirPositiveInt>? noteNumber;

  @ToMany()
  List<PrimitiveElementEntity>? noteNumberElement;

  @ToMany()
  List<ClaimResponseAdjudicationEntity>? adjudication;

  @ToMany()
  List<ClaimResponseDetailEntity>? detail;
}

class ClaimResponseAdjudicationEntity {
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

class ClaimResponseDetailEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? detailSequence;

  @ToOne()
  PrimitiveElementEntity? detailSequenceElement;

  List<FhirPositiveInt>? noteNumber;

  @ToMany()
  List<PrimitiveElementEntity>? noteNumberElement;

  @ToMany()
  List<ClaimResponseAdjudicationEntity>? adjudication;

  @ToMany()
  List<ClaimResponseSubDetailEntity>? subDetail;
}

class ClaimResponseSubDetailEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? subDetailSequence;

  @ToOne()
  PrimitiveElementEntity? subDetailSequenceElement;

  List<FhirPositiveInt>? noteNumber;

  @ToMany()
  List<PrimitiveElementEntity>? noteNumberElement;

  @ToMany()
  List<ClaimResponseAdjudicationEntity>? adjudication;
}

class ClaimResponseAddItemEntity {
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

  List<FhirPositiveInt>? subdetailSequence;

  @ToMany()
  List<PrimitiveElementEntity>? subdetailSequenceElement;

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
  List<ClaimResponseAdjudicationEntity>? adjudication;

  @ToMany()
  List<ClaimResponseDetail1Entity>? detail;
}

class ClaimResponseDetail1Entity {
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
  List<ClaimResponseAdjudicationEntity>? adjudication;

  @ToMany()
  List<ClaimResponseSubDetail1Entity>? subDetail;
}

class ClaimResponseSubDetail1Entity {
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
  List<ClaimResponseAdjudicationEntity>? adjudication;
}

class ClaimResponseTotalEntity {
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

class ClaimResponsePaymentEntity {
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

class ClaimResponseProcessNoteEntity {
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

class ClaimResponseInsuranceEntity {
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
  ReferenceEntity? coverage;

  String? businessArrangement;

  @ToOne()
  PrimitiveElementEntity? businessArrangementElement;

  @ToOne()
  ReferenceEntity? claimResponse;
}

class ClaimResponseErrorEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? itemSequence;

  @ToOne()
  PrimitiveElementEntity? itemSequenceElement;

  int? detailSequence;

  @ToOne()
  PrimitiveElementEntity? detailSequenceElement;

  int? subDetailSequence;

  @ToOne()
  PrimitiveElementEntity? subDetailSequenceElement;

  @ToOne()
  CodeableConceptEntity? code;
}
