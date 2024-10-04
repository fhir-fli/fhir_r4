import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Contract {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final String version;
  final PrimitiveElement versionElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept legalState;
  final Reference instantiatesCanonical;
  final FhirUri instantiatesUri;
  final PrimitiveElement instantiatesUriElement;
  final CodeableConcept contentDerivative;
  final FhirDateTime issued;
  final PrimitiveElement issuedElement;
  final Period applies;
  final CodeableConcept expirationType;
  final List<Reference> subject;
  final List<Reference> authority;
  final List<Reference> domain;
  final List<Reference> site;
  final String name;
  final PrimitiveElement nameElement;
  final String title;
  final PrimitiveElement titleElement;
  final String subtitle;
  final PrimitiveElement subtitleElement;
  final List<String> alias;
  final List<PrimitiveElement> aliasElement;
  final Reference author;
  final CodeableConcept scope;
  final CodeableConcept topicCodeableConcept;
  final Reference topicReference;
  final CodeableConcept type;
  final List<CodeableConcept> subType;
  final ContractContentDefinition contentDefinition;
  final List<ContractTerm> term;
  final List<Reference> supportingInfo;
  final List<Reference> relevantHistory;
  final List<ContractSigner> signer;
  final List<ContractFriendly> friendly;
  final List<ContractLegal> legal;
  final List<ContractRule> rule;
  final Attachment legallyBindingAttachment;
  final Reference legallyBindingReference;
}

@Data()
@JsonCodable()
class ContractContentDefinition {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept subType;
  final Reference publisher;
  final FhirDateTime publicationDate;
  final PrimitiveElement publicationDateElement;
  final FhirCode publicationStatus;
  final PrimitiveElement publicationStatusElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
}

@Data()
@JsonCodable()
class ContractTerm {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final FhirDateTime issued;
  final PrimitiveElement issuedElement;
  final Period applies;
  final CodeableConcept topicCodeableConcept;
  final Reference topicReference;
  final CodeableConcept type;
  final CodeableConcept subType;
  final String text;
  final PrimitiveElement textElement;
  final List<ContractSecurityLabel> securityLabel;
  final ContractOffer offer;
  final List<ContractAsset> asset;
  final List<ContractAction> action;
  final List<ContractTerm> group;
}

@Data()
@JsonCodable()
class ContractSecurityLabel {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<FhirUnsignedInt> number;
  final List<PrimitiveElement> numberElement;
  final Coding classification;
  final List<Coding> category;
  final List<Coding> control;
}

@Data()
@JsonCodable()
class ContractOffer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<ContractParty> party;
  final Reference topic;
  final CodeableConcept type;
  final CodeableConcept decision;
  final List<CodeableConcept> decisionMode;
  final List<ContractAnswer> answer;
  final String text;
  final PrimitiveElement textElement;
  final List<String> linkId;
  final List<PrimitiveElement> linkIdElement;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> securityLabelNumberElement;
}

@Data()
@JsonCodable()
class ContractParty {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Reference> reference;
  final CodeableConcept role;
}

@Data()
@JsonCodable()
class ContractAnswer {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final double valueDecimal;
  final PrimitiveElement valueDecimalElement;
  final double valueInteger;
  final PrimitiveElement valueIntegerElement;
  final String valueDate;
  final PrimitiveElement valueDateElement;
  final String valueDateTime;
  final PrimitiveElement valueDateTimeElement;
  final String valueTime;
  final PrimitiveElement valueTimeElement;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final String valueUri;
  final PrimitiveElement valueUriElement;
  final Attachment valueAttachment;
  final Coding valueCoding;
  final Quantity valueQuantity;
  final Reference valueReference;
}

@Data()
@JsonCodable()
class ContractAsset {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept scope;
  final List<CodeableConcept> type;
  final List<Reference> typeReference;
  final List<CodeableConcept> subtype;
  final Coding relationship;
  final List<ContractContext> context;
  final String condition;
  final PrimitiveElement conditionElement;
  final List<CodeableConcept> periodType;
  final List<Period> period;
  final List<Period> usePeriod;
  final String text;
  final PrimitiveElement textElement;
  final List<String> linkId;
  final List<PrimitiveElement> linkIdElement;
  final List<ContractAnswer> answer;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> securityLabelNumberElement;
  final List<ContractValuedItem> valuedItem;
}

@Data()
@JsonCodable()
class ContractContext {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference reference;
  final List<CodeableConcept> code;
  final String text;
  final PrimitiveElement textElement;
}

@Data()
@JsonCodable()
class ContractValuedItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept entityCodeableConcept;
  final Reference entityReference;
  final Identifier identifier;
  final FhirDateTime effectiveTime;
  final PrimitiveElement effectiveTimeElement;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final FhirDecimal points;
  final PrimitiveElement pointsElement;
  final Money net;
  final String payment;
  final PrimitiveElement paymentElement;
  final FhirDateTime paymentDate;
  final PrimitiveElement paymentDateElement;
  final Reference responsible;
  final Reference recipient;
  final List<String> linkId;
  final List<PrimitiveElement> linkIdElement;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> securityLabelNumberElement;
}

@Data()
@JsonCodable()
class ContractAction {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean doNotPerform;
  final PrimitiveElement doNotPerformElement;
  final CodeableConcept type;
  final List<ContractSubject> subject;
  final CodeableConcept intent;
  final List<String> linkId;
  final List<PrimitiveElement> linkIdElement;
  final CodeableConcept status;
  final Reference context;
  final List<String> contextLinkId;
  final List<PrimitiveElement> contextLinkIdElement;
  final String occurrenceDateTime;
  final PrimitiveElement occurrenceDateTimeElement;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final List<Reference> requester;
  final List<String> requesterLinkId;
  final List<PrimitiveElement> requesterLinkIdElement;
  final List<CodeableConcept> performerType;
  final CodeableConcept performerRole;
  final Reference performer;
  final List<String> performerLinkId;
  final List<PrimitiveElement> performerLinkIdElement;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<String> reason;
  final List<PrimitiveElement> reasonElement;
  final List<String> reasonLinkId;
  final List<PrimitiveElement> reasonLinkIdElement;
  final List<Annotation> note;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> securityLabelNumberElement;
}

@Data()
@JsonCodable()
class ContractSubject {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Reference> reference;
  final CodeableConcept role;
}

@Data()
@JsonCodable()
class ContractSigner {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Coding type;
  final Reference party;
  final List<Signature> signature;
}

@Data()
@JsonCodable()
class ContractFriendly {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Attachment contentAttachment;
  final Reference contentReference;
}

@Data()
@JsonCodable()
class ContractLegal {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Attachment contentAttachment;
  final Reference contentReference;
}

@Data()
@JsonCodable()
class ContractRule {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Attachment contentAttachment;
  final Reference contentReference;
}


