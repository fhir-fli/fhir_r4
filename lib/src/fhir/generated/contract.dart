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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirUri url;
  final PrimitiveElement Url;
  final String version;
  final PrimitiveElement Version;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept legalState;
  final Reference instantiatesCanonical;
  final FhirUri instantiatesUri;
  final PrimitiveElement InstantiatesUri;
  final CodeableConcept contentDerivative;
  final FhirDateTime issued;
  final PrimitiveElement Issued;
  final Period applies;
  final CodeableConcept expirationType;
  final List<Reference> subject;
  final List<Reference> authority;
  final List<Reference> domain;
  final List<Reference> site;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final String subtitle;
  final PrimitiveElement Subtitle;
  final List<String> alias;
  final List<PrimitiveElement> Alias;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept subType;
  final Reference publisher;
  final FhirDateTime publicationDate;
  final PrimitiveElement PublicationDate;
  final FhirCode publicationStatus;
  final PrimitiveElement PublicationStatus;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
}

@Data()
@JsonCodable()
class ContractTerm {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final FhirDateTime issued;
  final PrimitiveElement Issued;
  final Period applies;
  final CodeableConcept topicCodeableConcept;
  final Reference topicReference;
  final CodeableConcept type;
  final CodeableConcept subType;
  final String text;
  final PrimitiveElement Text;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<FhirUnsignedInt> number;
  final List<PrimitiveElement> Number;
  final Coding classification;
  final List<Coding> category;
  final List<Coding> control;
}

@Data()
@JsonCodable()
class ContractOffer {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<ContractParty> party;
  final Reference topic;
  final CodeableConcept type;
  final CodeableConcept decision;
  final List<CodeableConcept> decisionMode;
  final List<ContractAnswer> answer;
  final String text;
  final PrimitiveElement Text;
  final List<String> linkId;
  final List<PrimitiveElement> LinkId;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> SecurityLabelNumber;
}

@Data()
@JsonCodable()
class ContractParty {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Reference> reference;
  final CodeableConcept role;
}

@Data()
@JsonCodable()
class ContractAnswer {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final double valueDecimal;
  final PrimitiveElement ValueDecimal;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final String valueDate;
  final PrimitiveElement ValueDate;
  final String valueDateTime;
  final PrimitiveElement ValueDateTime;
  final String valueTime;
  final PrimitiveElement ValueTime;
  final String valueString;
  final PrimitiveElement ValueString;
  final String valueUri;
  final PrimitiveElement ValueUri;
  final Attachment valueAttachment;
  final Coding valueCoding;
  final Quantity valueQuantity;
  final Reference valueReference;
}

@Data()
@JsonCodable()
class ContractAsset {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept scope;
  final List<CodeableConcept> type;
  final List<Reference> typeReference;
  final List<CodeableConcept> subtype;
  final Coding relationship;
  final List<ContractContext> context;
  final String condition;
  final PrimitiveElement Condition;
  final List<CodeableConcept> periodType;
  final List<Period> period;
  final List<Period> usePeriod;
  final String text;
  final PrimitiveElement Text;
  final List<String> linkId;
  final List<PrimitiveElement> LinkId;
  final List<ContractAnswer> answer;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> SecurityLabelNumber;
  final List<ContractValuedItem> valuedItem;
}

@Data()
@JsonCodable()
class ContractContext {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference reference;
  final List<CodeableConcept> code;
  final String text;
  final PrimitiveElement Text;
}

@Data()
@JsonCodable()
class ContractValuedItem {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept entityCodeableConcept;
  final Reference entityReference;
  final Identifier identifier;
  final FhirDateTime effectiveTime;
  final PrimitiveElement EffectiveTime;
  final Quantity quantity;
  final Money unitPrice;
  final FhirDecimal factor;
  final PrimitiveElement Factor;
  final FhirDecimal points;
  final PrimitiveElement Points;
  final Money net;
  final String payment;
  final PrimitiveElement Payment;
  final FhirDateTime paymentDate;
  final PrimitiveElement PaymentDate;
  final Reference responsible;
  final Reference recipient;
  final List<String> linkId;
  final List<PrimitiveElement> LinkId;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> SecurityLabelNumber;
}

@Data()
@JsonCodable()
class ContractAction {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean doNotPerform;
  final PrimitiveElement DoNotPerform;
  final CodeableConcept type;
  final List<ContractSubject> subject;
  final CodeableConcept intent;
  final List<String> linkId;
  final List<PrimitiveElement> LinkId;
  final CodeableConcept status;
  final Reference context;
  final List<String> contextLinkId;
  final List<PrimitiveElement> ContextLinkId;
  final String occurrenceDateTime;
  final PrimitiveElement OccurrenceDateTime;
  final Period occurrencePeriod;
  final Timing occurrenceTiming;
  final List<Reference> requester;
  final List<String> requesterLinkId;
  final List<PrimitiveElement> RequesterLinkId;
  final List<CodeableConcept> performerType;
  final CodeableConcept performerRole;
  final Reference performer;
  final List<String> performerLinkId;
  final List<PrimitiveElement> PerformerLinkId;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<String> reason;
  final List<PrimitiveElement> Reason;
  final List<String> reasonLinkId;
  final List<PrimitiveElement> ReasonLinkId;
  final List<Annotation> note;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> SecurityLabelNumber;
}

@Data()
@JsonCodable()
class ContractSubject {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Reference> reference;
  final CodeableConcept role;
}

@Data()
@JsonCodable()
class ContractSigner {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Coding type;
  final Reference party;
  final List<Signature> signature;
}

@Data()
@JsonCodable()
class ContractFriendly {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Attachment contentAttachment;
  final Reference contentReference;
}

@Data()
@JsonCodable()
class ContractLegal {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Attachment contentAttachment;
  final Reference contentReference;
}

@Data()
@JsonCodable()
class ContractRule {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Attachment contentAttachment;
  final Reference contentReference;
}


