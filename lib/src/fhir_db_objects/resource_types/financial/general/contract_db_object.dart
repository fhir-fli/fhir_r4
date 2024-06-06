import 'package:objectbox/objectbox.dart';
@Entity()
class ContractDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> legalState = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> instantiatesCanonical = ToOne<ReferenceDbObject>();
  final ToOne<FhirUriDbObject> instantiatesUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> instantiatesUriElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> contentDerivative = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDateTimeDbObject> issued = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> issuedElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> applies = ToOne<PeriodDbObject>();
  final ToOne<CodeableConceptDbObject> expirationType = ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> subject = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> authority = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> domain = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> site = ToMany<ReferenceDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> subtitle = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> subtitleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> alias = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> aliasElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> author = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> scope = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> topicCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> topicReference = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> subType = ToMany<CodeableConceptDbObject>();
  final ToOne<ContractContentDefinitionDbObject> contentDefinition = ToOne<ContractContentDefinitionDbObject>();
  final ToMany<ContractTermDbObject> term = ToMany<ContractTermDbObject>();
  final ToMany<ReferenceDbObject> supportingInfo = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> relevantHistory = ToMany<ReferenceDbObject>();
  final ToMany<ContractSignerDbObject> signer = ToMany<ContractSignerDbObject>();
  final ToMany<ContractFriendlyDbObject> friendly = ToMany<ContractFriendlyDbObject>();
  final ToMany<ContractLegalDbObject> legal = ToMany<ContractLegalDbObject>();
  final ToMany<ContractRuleDbObject> rule = ToMany<ContractRuleDbObject>();
  final ToOne<AttachmentDbObject> legallyBindingAttachment = ToOne<AttachmentDbObject>();
  final ToOne<ReferenceDbObject> legallyBindingReference = ToOne<ReferenceDbObject>();
  ContractDbObject({required this.id});
}
@Entity()
class ContractContentDefinitionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> subType = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> publisher = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> publicationDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> publicationDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> publicationStatus = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> publicationStatusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement = ToOne<PrimitiveElementDbObject>();
  ContractContentDefinitionDbObject({required this.id});
}
@Entity()
class ContractTermDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<FhirDateTimeDbObject> issued = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> issuedElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> applies = ToOne<PeriodDbObject>();
  final ToOne<CodeableConceptDbObject> topicCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> topicReference = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> subType = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> text = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ContractSecurityLabelDbObject> securityLabel = ToMany<ContractSecurityLabelDbObject>();
  final ToOne<ContractOfferDbObject> offer = ToOne<ContractOfferDbObject>();
  final ToMany<ContractAssetDbObject> asset = ToMany<ContractAssetDbObject>();
  final ToMany<ContractActionDbObject> action = ToMany<ContractActionDbObject>();
  final ToMany<ContractTermDbObject> group = ToMany<ContractTermDbObject>();
  ContractTermDbObject({required this.id});
}
@Entity()
class ContractSecurityLabelDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirUnsignedIntDbObject> number = ToMany<FhirUnsignedIntDbObject>();
  final ToMany<PrimitiveElementDbObject> numberElement = ToMany<PrimitiveElementDbObject>();
@Entity()
class CodingDbObject {
  @Id(assignable: true)
  int id;
  final ToMany<CodingDbObject> category = ToMany<CodingDbObject>();
  final ToMany<CodingDbObject> control = ToMany<CodingDbObject>();
  CodingDbObject({required this.id});
}
@Entity()
class ContractOfferDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToMany<ContractPartyDbObject> party = ToMany<ContractPartyDbObject>();
  final ToOne<ReferenceDbObject> topic = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> decision = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> decisionMode = ToMany<CodeableConceptDbObject>();
  final ToMany<ContractAnswerDbObject> answer = ToMany<ContractAnswerDbObject>();
  final ToOne<StringDbObject> text = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> linkId = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> linkIdElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirUnsignedIntDbObject> securityLabelNumber = ToMany<FhirUnsignedIntDbObject>();
  final ToMany<ElementDbObject> securityLabelNumberElement = ToMany<ElementDbObject>();
  ContractOfferDbObject({required this.id});
}
@Entity()
class ContractPartyDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<ReferenceDbObject> reference = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> role = ToOne<CodeableConceptDbObject>();
  ContractPartyDbObject({required this.id});
}
@Entity()
class ContractAnswerDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> valueBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBooleanElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> valueDecimal = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDecimalElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> valueInteger = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> valueIntegerElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> valueDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> valueDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirTimeDbObject> valueTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> valueString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> valueUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> valueUriElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<AttachmentDbObject> valueAttachment = ToOne<AttachmentDbObject>();
  final ToOne<CodingDbObject> valueCoding = ToOne<CodingDbObject>();
  final ToOne<QuantityDbObject> valueQuantity = ToOne<QuantityDbObject>();
  final ToOne<ReferenceDbObject> valueReference = ToOne<ReferenceDbObject>();
  ContractAnswerDbObject({required this.id});
}
@Entity()
class ContractAssetDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> scope = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> type = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> typeReference = ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> subtype = ToMany<CodeableConceptDbObject>();
  final ToOne<CodingDbObject> relationship = ToOne<CodingDbObject>();
  final ToMany<ContractContextDbObject> context = ToMany<ContractContextDbObject>();
  final ToOne<StringDbObject> condition = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> conditionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> periodType = ToMany<CodeableConceptDbObject>();
  final ToMany<PeriodDbObject> period = ToMany<PeriodDbObject>();
  final ToMany<PeriodDbObject> usePeriod = ToMany<PeriodDbObject>();
  final ToOne<StringDbObject> text = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> linkId = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> linkIdElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<ContractAnswerDbObject> answer = ToMany<ContractAnswerDbObject>();
  final ToMany<FhirUnsignedIntDbObject> securityLabelNumber = ToMany<FhirUnsignedIntDbObject>();
  final ToMany<ElementDbObject> securityLabelNumberElement = ToMany<ElementDbObject>();
  final ToMany<ContractValuedItemDbObject> valuedItem = ToMany<ContractValuedItemDbObject>();
  ContractAssetDbObject({required this.id});
}
@Entity()
class ContractContextDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> reference = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> code = ToMany<CodeableConceptDbObject>();
  final ToOne<StringDbObject> text = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement = ToOne<PrimitiveElementDbObject>();
  ContractContextDbObject({required this.id});
}
@Entity()
class ContractValuedItemDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> entityCodeableConcept = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> entityReference = ToOne<ReferenceDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<FhirDateTimeDbObject> effectiveTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> effectiveTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<QuantityDbObject> quantity = ToOne<QuantityDbObject>();
  final ToOne<MoneyDbObject> unitPrice = ToOne<MoneyDbObject>();
  final ToOne<FhirDecimalDbObject> factor = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> factorElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> points = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> pointsElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> net = ToOne<MoneyDbObject>();
  final ToOne<StringDbObject> payment = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> paymentElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> paymentDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> paymentDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> responsible = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> recipient = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> linkId = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> linkIdElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<FhirUnsignedIntDbObject> securityLabelNumber = ToMany<FhirUnsignedIntDbObject>();
  final ToMany<ElementDbObject> securityLabelNumberElement = ToMany<ElementDbObject>();
  ContractValuedItemDbObject({required this.id});
}
@Entity()
class ContractActionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> doNotPerform = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> doNotPerformElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<ContractSubjectDbObject> subject = ToMany<ContractSubjectDbObject>();
  final ToOne<CodeableConceptDbObject> intent = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> linkId = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> linkIdElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> status = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> context = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> contextLinkId = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> contextLinkIdElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> occurrenceDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> occurrenceDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> occurrencePeriod = ToOne<PeriodDbObject>();
  final ToOne<TimingDbObject> occurrenceTiming = ToOne<TimingDbObject>();
  final ToMany<ReferenceDbObject> requester = ToMany<ReferenceDbObject>();
  final ToOne<StringDbObject> requesterLinkId = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> requesterLinkIdElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> performerType = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> performerRole = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> performer = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> performerLinkId = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> performerLinkIdElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToOne<StringDbObject> reason = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> reasonElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> reasonLinkId = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> reasonLinkIdElement = ToMany<PrimitiveElementDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<FhirUnsignedIntDbObject> securityLabelNumber = ToMany<FhirUnsignedIntDbObject>();
  final ToMany<ElementDbObject> securityLabelNumberElement = ToMany<ElementDbObject>();
  ContractActionDbObject({required this.id});
}
@Entity()
class ContractSubjectDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<ReferenceDbObject> reference = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> role = ToOne<CodeableConceptDbObject>();
  ContractSubjectDbObject({required this.id});
}
@Entity()
class ContractSignerDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodingDbObject> type = ToOne<CodingDbObject>();
  final ToOne<ReferenceDbObject> party = ToOne<ReferenceDbObject>();
  final ToMany<SignatureDbObject> signature = ToMany<SignatureDbObject>();
  ContractSignerDbObject({required this.id});
}
@Entity()
class ContractFriendlyDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<AttachmentDbObject> contentAttachment = ToOne<AttachmentDbObject>();
  final ToOne<ReferenceDbObject> contentReference = ToOne<ReferenceDbObject>();
  ContractFriendlyDbObject({required this.id});
}
@Entity()
class ContractLegalDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<AttachmentDbObject> contentAttachment = ToOne<AttachmentDbObject>();
  final ToOne<ReferenceDbObject> contentReference = ToOne<ReferenceDbObject>();
  ContractLegalDbObject({required this.id});
}
@Entity()
class ContractRuleDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<AttachmentDbObject> contentAttachment = ToOne<AttachmentDbObject>();
  final ToOne<ReferenceDbObject> contentReference = ToOne<ReferenceDbObject>();
  ContractRuleDbObject({required this.id});
}
