import 'package:objectbox/objectbox.dart';
@Entity()
class QuestionnaireDbObject {
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
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCanonicalDbObject> derivedFrom = ToMany<FhirCanonicalDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> experimental = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> experimentalElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirCodeDbObject> subjectType = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> subjectTypeElement = ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> publisher = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> publisherElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ContactDetailDbObject> contact = ToMany<ContactDetailDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<UsageContextDbObject> useContext = ToMany<UsageContextDbObject>();
  final ToMany<CodeableConceptDbObject> jurisdiction = ToMany<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> purpose = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> purposeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> approvalDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> approvalDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> lastReviewDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> lastReviewDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> effectivePeriod = ToOne<PeriodDbObject>();
  final ToMany<CodingDbObject> code = ToMany<CodingDbObject>();
  final ToMany<QuestionnaireItemDbObject> item = ToMany<QuestionnaireItemDbObject>();
  QuestionnaireDbObject({required this.id});
}
@Entity()
class QuestionnaireItemDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> linkId = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> linkIdElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> definition = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> definitionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodingDbObject> code = ToMany<CodingDbObject>();
  final ToOne<StringDbObject> prefix = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> prefixElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> text = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<QuestionnaireEnableWhenDbObject> enableWhen = ToMany<QuestionnaireEnableWhenDbObject>();
  final ToOne<FhirCodeDbObject> enableBehavior = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> enableBehaviorElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> required_ = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> requiredElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> repeats = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> repeatsElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> readOnly = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> readOnlyElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> maxLength = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> maxLengthElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> answerValueSet = ToOne<FhirCanonicalDbObject>();
  final ToMany<QuestionnaireAnswerOptionDbObject> answerOption = ToMany<QuestionnaireAnswerOptionDbObject>();
  final ToMany<QuestionnaireInitialDbObject> initial = ToMany<QuestionnaireInitialDbObject>();
  final ToMany<QuestionnaireItemDbObject> item = ToMany<QuestionnaireItemDbObject>();
  QuestionnaireItemDbObject({required this.id});
}
@Entity()
class QuestionnaireEnableWhenDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> question = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> questionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> operator_ = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> operatorElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> answerBoolean = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> answerBooleanElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> answerDecimal = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> answerDecimalElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirIntegerDbObject> answerInteger = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> answerIntegerElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> answerDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> answerDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> answerDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> answerDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirTimeDbObject> answerTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> answerTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> answerString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> answerStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodingDbObject> answerCoding = ToOne<CodingDbObject>();
  final ToOne<QuantityDbObject> answerQuantity = ToOne<QuantityDbObject>();
  final ToOne<ReferenceDbObject> answerReference = ToOne<ReferenceDbObject>();
  QuestionnaireEnableWhenDbObject({required this.id});
}
@Entity()
class QuestionnaireAnswerOptionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirIntegerDbObject> valueInteger = ToOne<FhirIntegerDbObject>();
  final ToOne<PrimitiveElementDbObject> valueIntegerElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> valueDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> valueDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirTimeDbObject> valueTime = ToOne<FhirTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> valueTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> valueString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodingDbObject> valueCoding = ToOne<CodingDbObject>();
  final ToOne<ReferenceDbObject> valueReference = ToOne<ReferenceDbObject>();
  final ToOne<FhirBooleanDbObject> initialSelected = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> initialSelectedElement = ToOne<PrimitiveElementDbObject>();
  QuestionnaireAnswerOptionDbObject({required this.id});
}
@Entity()
class QuestionnaireInitialDbObject {
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
  QuestionnaireInitialDbObject({required this.id});
}
