import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ContractEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Contract';

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

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  @ToOne()
  CodeableConceptEntity? legalState;

  @ToOne()
  ReferenceEntity? instantiatesCanonical;

  String? instantiatesUri;

  @ToOne()
  PrimitiveElementEntity? instantiatesUriElement;

  @ToOne()
  CodeableConceptEntity? contentDerivative;

  String? issued;

  @ToOne()
  PrimitiveElementEntity? issuedElement;

  @ToOne()
  PeriodEntity? applies;

  @ToOne()
  CodeableConceptEntity? expirationType;

  @ToMany()
  List<ReferenceEntity>? subject;

  @ToMany()
  List<ReferenceEntity>? authority;

  @ToMany()
  List<ReferenceEntity>? domain;

  @ToMany()
  List<ReferenceEntity>? site;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  String? subtitle;

  @ToOne()
  PrimitiveElementEntity? subtitleElement;

  List<String>? alias;

  @ToMany()
  List<PrimitiveElementEntity>? aliasElement;

  @ToOne()
  ReferenceEntity? author;

  @ToOne()
  CodeableConceptEntity? scope;

  @ToOne()
  CodeableConceptEntity? topicCodeableConcept;

  @ToOne()
  ReferenceEntity? topicReference;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<CodeableConceptEntity>? subType;

  @ToOne()
  ContractContentDefinitionEntity? contentDefinition;

  @ToMany()
  List<ContractTermEntity>? term;

  @ToMany()
  List<ReferenceEntity>? supportingInfo;

  @ToMany()
  List<ReferenceEntity>? relevantHistory;

  @ToMany()
  List<ContractSignerEntity>? signer;

  @ToMany()
  List<ContractFriendlyEntity>? friendly;

  @ToMany()
  List<ContractLegalEntity>? legal;

  @ToMany()
  List<ContractRuleEntity>? rule;

  @ToOne()
  AttachmentEntity? legallyBindingAttachment;

  @ToOne()
  ReferenceEntity? legallyBindingReference;
}

class ContractContentDefinitionEntity {
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
  CodeableConceptEntity? subType;

  @ToOne()
  ReferenceEntity? publisher;

  String? publicationDate;

  @ToOne()
  PrimitiveElementEntity? publicationDateElement;

  String? publicationStatus;

  @ToOne()
  PrimitiveElementEntity? publicationStatusElement;

  String? copyright;

  @ToOne()
  PrimitiveElementEntity? copyrightElement;
}

class ContractTermEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  IdentifierEntity? identifier;

  String? issued;

  @ToOne()
  PrimitiveElementEntity? issuedElement;

  @ToOne()
  PeriodEntity? applies;

  @ToOne()
  CodeableConceptEntity? topicCodeableConcept;

  @ToOne()
  ReferenceEntity? topicReference;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  CodeableConceptEntity? subType;

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;

  @ToMany()
  List<ContractSecurityLabelEntity>? securityLabel;

  @ToOne()
  ContractOfferEntity? offer;

  @ToMany()
  List<ContractAssetEntity>? asset;

  @ToMany()
  List<ContractActionEntity>? action;

  @ToMany()
  List<ContractTermEntity>? group;
}

class ContractSecurityLabelEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  List<FhirUnsignedInt>? number;

  @ToMany()
  List<PrimitiveElementEntity>? numberElement;

  @ToOne()
  CodingEntity? classification;

  @ToMany()
  List<CodingEntity>? category;

  @ToMany()
  List<CodingEntity>? control;
}

class ContractOfferEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  @ToMany()
  List<ContractPartyEntity>? party;

  @ToOne()
  ReferenceEntity? topic;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  CodeableConceptEntity? decision;

  @ToMany()
  List<CodeableConceptEntity>? decisionMode;

  @ToMany()
  List<ContractAnswerEntity>? answer;

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;

  List<String>? linkId;

  @ToMany()
  List<PrimitiveElementEntity>? linkIdElement;

  List<FhirUnsignedInt>? securityLabelNumber;

  @ToMany()
  List<PrimitiveElementEntity>? securityLabelNumberElement;
}

class ContractPartyEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<ReferenceEntity>? reference;

  @ToOne()
  CodeableConceptEntity? role;
}

class ContractAnswerEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;

  double? valueDecimal;

  @ToOne()
  PrimitiveElementEntity? valueDecimalElement;

  int? valueInteger;

  @ToOne()
  PrimitiveElementEntity? valueIntegerElement;

  String? valueDate;

  @ToOne()
  PrimitiveElementEntity? valueDateElement;

  String? valueDateTime;

  @ToOne()
  PrimitiveElementEntity? valueDateTimeElement;

  String? valueTime;

  @ToOne()
  PrimitiveElementEntity? valueTimeElement;

  String? valueString;

  @ToOne()
  PrimitiveElementEntity? valueStringElement;

  String? valueUri;

  @ToOne()
  PrimitiveElementEntity? valueUriElement;

  @ToOne()
  AttachmentEntity? valueAttachment;

  @ToOne()
  CodingEntity? valueCoding;

  @ToOne()
  QuantityEntity? valueQuantity;

  @ToOne()
  ReferenceEntity? valueReference;
}

class ContractAssetEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? scope;

  @ToMany()
  List<CodeableConceptEntity>? type;

  @ToMany()
  List<ReferenceEntity>? typeReference;

  @ToMany()
  List<CodeableConceptEntity>? subtype;

  @ToOne()
  CodingEntity? relationship;

  @ToMany()
  List<ContractContextEntity>? context;

  String? condition;

  @ToOne()
  PrimitiveElementEntity? conditionElement;

  @ToMany()
  List<CodeableConceptEntity>? periodType;

  @ToMany()
  List<PeriodEntity>? period;

  @ToMany()
  List<PeriodEntity>? usePeriod;

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;

  List<String>? linkId;

  @ToMany()
  List<PrimitiveElementEntity>? linkIdElement;

  @ToMany()
  List<ContractAnswerEntity>? answer;

  List<FhirUnsignedInt>? securityLabelNumber;

  @ToMany()
  List<PrimitiveElementEntity>? securityLabelNumberElement;

  @ToMany()
  List<ContractValuedItemEntity>? valuedItem;
}

class ContractContextEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  ReferenceEntity? reference;

  @ToMany()
  List<CodeableConceptEntity>? code;

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;
}

class ContractValuedItemEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? entityCodeableConcept;

  @ToOne()
  ReferenceEntity? entityReference;

  @ToOne()
  IdentifierEntity? identifier;

  String? effectiveTime;

  @ToOne()
  PrimitiveElementEntity? effectiveTimeElement;

  @ToOne()
  QuantityEntity? quantity;

  @ToOne()
  MoneyEntity? unitPrice;

  double? factor;

  @ToOne()
  PrimitiveElementEntity? factorElement;

  double? points;

  @ToOne()
  PrimitiveElementEntity? pointsElement;

  @ToOne()
  MoneyEntity? net;

  String? payment;

  @ToOne()
  PrimitiveElementEntity? paymentElement;

  String? paymentDate;

  @ToOne()
  PrimitiveElementEntity? paymentDateElement;

  @ToOne()
  ReferenceEntity? responsible;

  @ToOne()
  ReferenceEntity? recipient;

  List<String>? linkId;

  @ToMany()
  List<PrimitiveElementEntity>? linkIdElement;

  List<FhirUnsignedInt>? securityLabelNumber;

  @ToMany()
  List<PrimitiveElementEntity>? securityLabelNumberElement;
}

class ContractActionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? doNotPerform;

  @ToOne()
  PrimitiveElementEntity? doNotPerformElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToMany()
  List<ContractSubjectEntity>? subject;

  @ToOne()
  CodeableConceptEntity? intent;

  List<String>? linkId;

  @ToMany()
  List<PrimitiveElementEntity>? linkIdElement;

  @ToOne()
  CodeableConceptEntity? status;

  @ToOne()
  ReferenceEntity? context;

  List<String>? contextLinkId;

  @ToMany()
  List<PrimitiveElementEntity>? contextLinkIdElement;

  String? occurrenceDateTime;

  @ToOne()
  PrimitiveElementEntity? occurrenceDateTimeElement;

  @ToOne()
  PeriodEntity? occurrencePeriod;

  @ToOne()
  TimingEntity? occurrenceTiming;

  @ToMany()
  List<ReferenceEntity>? requester;

  List<String>? requesterLinkId;

  @ToMany()
  List<PrimitiveElementEntity>? requesterLinkIdElement;

  @ToMany()
  List<CodeableConceptEntity>? performerType;

  @ToOne()
  CodeableConceptEntity? performerRole;

  @ToOne()
  ReferenceEntity? performer;

  List<String>? performerLinkId;

  @ToMany()
  List<PrimitiveElementEntity>? performerLinkIdElement;

  @ToMany()
  List<CodeableConceptEntity>? reasonCode;

  @ToMany()
  List<ReferenceEntity>? reasonReference;

  List<String>? reason;

  @ToMany()
  List<PrimitiveElementEntity>? reasonElement;

  List<String>? reasonLinkId;

  @ToMany()
  List<PrimitiveElementEntity>? reasonLinkIdElement;

  @ToMany()
  List<AnnotationEntity>? note;

  List<FhirUnsignedInt>? securityLabelNumber;

  @ToMany()
  List<PrimitiveElementEntity>? securityLabelNumberElement;
}

class ContractSubjectEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<ReferenceEntity>? reference;

  @ToOne()
  CodeableConceptEntity? role;
}

class ContractSignerEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodingEntity? type;

  @ToOne()
  ReferenceEntity? party;

  @ToMany()
  List<SignatureEntity>? signature;
}

class ContractFriendlyEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  AttachmentEntity? contentAttachment;

  @ToOne()
  ReferenceEntity? contentReference;
}

class ContractLegalEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  AttachmentEntity? contentAttachment;

  @ToOne()
  ReferenceEntity? contentReference;
}

class ContractRuleEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  AttachmentEntity? contentAttachment;

  @ToOne()
  ReferenceEntity? contentReference;
}
