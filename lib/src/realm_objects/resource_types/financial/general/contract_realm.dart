import 'package:realm/realm.dart';
@RealmModel()
class _ContractRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_IdentifierRealm> identifier;
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _CodeableConceptRealm legalState;
  late _ReferenceRealm instantiatesCanonical;
  late _FhirUriRealm instantiatesUri;
  late _PrimitiveElementRealm instantiatesUriElement;
  late _CodeableConceptRealm contentDerivative;
  late String issued;
  late _PrimitiveElementRealm issuedElement;
  late _PeriodRealm applies;
  late _CodeableConceptRealm expirationType;
  late List<_ReferenceRealm> subject;
  late List<_ReferenceRealm> authority;
  late List<_ReferenceRealm> domain;
  late List<_ReferenceRealm> site;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late String subtitle;
  late _PrimitiveElementRealm subtitleElement;
  late String alias;
  late List<_PrimitiveElementRealm> aliasElement;
  late _ReferenceRealm author;
  late _CodeableConceptRealm scope;
  late _CodeableConceptRealm topicCodeableConcept;
  late _ReferenceRealm topicReference;
  late _CodeableConceptRealm type;
  late List<_CodeableConceptRealm> subType;
  late _ContractContentDefinitionRealm contentDefinition;
  late List<_ContractTermRealm> term;
  late List<_ReferenceRealm> supportingInfo;
  late List<_ReferenceRealm> relevantHistory;
  late List<_ContractSignerRealm> signer;
  late List<_ContractFriendlyRealm> friendly;
  late List<_ContractLegalRealm> legal;
  late List<_ContractRuleRealm> rule;
  late _AttachmentRealm legallyBindingAttachment;
  late _ReferenceRealm legallyBindingReference;
}
@RealmModel()
class _ContractContentDefinitionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm subType;
  late _ReferenceRealm publisher;
  late String publicationDate;
  late _PrimitiveElementRealm publicationDateElement;
  late _FhirCodeRealm publicationStatus;
  late _PrimitiveElementRealm publicationStatusElement;
  late _FhirMarkdownRealm copyright;
  late _PrimitiveElementRealm copyrightElement;
}
@RealmModel()
class _ContractTermRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _IdentifierRealm identifier;
  late String issued;
  late _PrimitiveElementRealm issuedElement;
  late _PeriodRealm applies;
  late _CodeableConceptRealm topicCodeableConcept;
  late _ReferenceRealm topicReference;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm subType;
  late String text;
  late _PrimitiveElementRealm textElement;
  late List<_ContractSecurityLabelRealm> securityLabel;
  late _ContractOfferRealm offer;
  late List<_ContractAssetRealm> asset;
  late List<_ContractActionRealm> action;
  late List<_ContractTermRealm> group;
}
@RealmModel()
class _ContractSecurityLabelRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_FhirUnsignedIntRealm> number;
  late List<_PrimitiveElementRealm> numberElement;
@RealmModel()
class _CodingRealm {
  late List<_CodingRealm> category;
  late List<_CodingRealm> control;
}
@RealmModel()
class _ContractOfferRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_IdentifierRealm> identifier;
  late List<_ContractPartyRealm> party;
  late _ReferenceRealm topic;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm decision;
  late List<_CodeableConceptRealm> decisionMode;
  late List<_ContractAnswerRealm> answer;
  late String text;
  late _PrimitiveElementRealm textElement;
  late String linkId;
  late List<_PrimitiveElementRealm> linkIdElement;
  late List<_FhirUnsignedIntRealm> securityLabelNumber;
  late List<_ElementRealm> securityLabelNumberElement;
}
@RealmModel()
class _ContractPartyRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_ReferenceRealm> reference;
  late _CodeableConceptRealm role;
}
@RealmModel()
class _ContractAnswerRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm valueBoolean;
  late _PrimitiveElementRealm valueBooleanElement;
  late _FhirDecimalRealm valueDecimal;
  late _PrimitiveElementRealm valueDecimalElement;
  late _FhirIntegerRealm valueInteger;
  late _PrimitiveElementRealm valueIntegerElement;
  late _FhirDateRealm valueDate;
  late _PrimitiveElementRealm valueDateElement;
  late String valueDateTime;
  late _PrimitiveElementRealm valueDateTimeElement;
  late _FhirTimeRealm valueTime;
  late _PrimitiveElementRealm valueTimeElement;
  late String valueString;
  late _PrimitiveElementRealm valueStringElement;
  late _FhirUriRealm valueUri;
  late _PrimitiveElementRealm valueUriElement;
  late _AttachmentRealm valueAttachment;
  late _CodingRealm valueCoding;
  late _QuantityRealm valueQuantity;
  late _ReferenceRealm valueReference;
}
@RealmModel()
class _ContractAssetRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm scope;
  late List<_CodeableConceptRealm> type;
  late List<_ReferenceRealm> typeReference;
  late List<_CodeableConceptRealm> subtype;
  late _CodingRealm relationship;
  late List<_ContractContextRealm> context;
  late String condition;
  late _PrimitiveElementRealm conditionElement;
  late List<_CodeableConceptRealm> periodType;
  late List<_PeriodRealm> period;
  late List<_PeriodRealm> usePeriod;
  late String text;
  late _PrimitiveElementRealm textElement;
  late String linkId;
  late List<_PrimitiveElementRealm> linkIdElement;
  late List<_ContractAnswerRealm> answer;
  late List<_FhirUnsignedIntRealm> securityLabelNumber;
  late List<_ElementRealm> securityLabelNumberElement;
  late List<_ContractValuedItemRealm> valuedItem;
}
@RealmModel()
class _ContractContextRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm reference;
  late List<_CodeableConceptRealm> code;
  late String text;
  late _PrimitiveElementRealm textElement;
}
@RealmModel()
class _ContractValuedItemRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm entityCodeableConcept;
  late _ReferenceRealm entityReference;
  late _IdentifierRealm identifier;
  late String effectiveTime;
  late _PrimitiveElementRealm effectiveTimeElement;
  late _QuantityRealm quantity;
  late _MoneyRealm unitPrice;
  late _FhirDecimalRealm factor;
  late _PrimitiveElementRealm factorElement;
  late _FhirDecimalRealm points;
  late _PrimitiveElementRealm pointsElement;
  late _MoneyRealm net;
  late String payment;
  late _PrimitiveElementRealm paymentElement;
  late String paymentDate;
  late _PrimitiveElementRealm paymentDateElement;
  late _ReferenceRealm responsible;
  late _ReferenceRealm recipient;
  late String linkId;
  late List<_PrimitiveElementRealm> linkIdElement;
  late List<_FhirUnsignedIntRealm> securityLabelNumber;
  late List<_ElementRealm> securityLabelNumberElement;
}
@RealmModel()
class _ContractActionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm doNotPerform;
  late _PrimitiveElementRealm doNotPerformElement;
  late _CodeableConceptRealm type;
  late List<_ContractSubjectRealm> subject;
  late _CodeableConceptRealm intent;
  late String linkId;
  late List<_PrimitiveElementRealm> linkIdElement;
  late _CodeableConceptRealm status;
  late _ReferenceRealm context;
  late String contextLinkId;
  late List<_PrimitiveElementRealm> contextLinkIdElement;
  late String occurrenceDateTime;
  late _PrimitiveElementRealm occurrenceDateTimeElement;
  late _PeriodRealm occurrencePeriod;
  late _TimingRealm occurrenceTiming;
  late List<_ReferenceRealm> requester;
  late String requesterLinkId;
  late List<_PrimitiveElementRealm> requesterLinkIdElement;
  late List<_CodeableConceptRealm> performerType;
  late _CodeableConceptRealm performerRole;
  late _ReferenceRealm performer;
  late String performerLinkId;
  late List<_PrimitiveElementRealm> performerLinkIdElement;
  late List<_CodeableConceptRealm> reasonCode;
  late List<_ReferenceRealm> reasonReference;
  late String reason;
  late List<_PrimitiveElementRealm> reasonElement;
  late String reasonLinkId;
  late List<_PrimitiveElementRealm> reasonLinkIdElement;
  late List<_AnnotationRealm> note;
  late List<_FhirUnsignedIntRealm> securityLabelNumber;
  late List<_ElementRealm> securityLabelNumberElement;
}
@RealmModel()
class _ContractSubjectRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_ReferenceRealm> reference;
  late _CodeableConceptRealm role;
}
@RealmModel()
class _ContractSignerRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodingRealm type;
  late _ReferenceRealm party;
  late List<_SignatureRealm> signature;
}
@RealmModel()
class _ContractFriendlyRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _AttachmentRealm contentAttachment;
  late _ReferenceRealm contentReference;
}
@RealmModel()
class _ContractLegalRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _AttachmentRealm contentAttachment;
  late _ReferenceRealm contentReference;
}
@RealmModel()
class _ContractRuleRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _AttachmentRealm contentAttachment;
  late _ReferenceRealm contentReference;
}
