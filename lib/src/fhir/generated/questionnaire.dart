import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Questionnaire {
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
  final FhirUri url;
  final PrimitiveElement urlElement;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement versionElement;
  final String name;
  final PrimitiveElement nameElement;
  final String title;
  final PrimitiveElement titleElement;
  final List<FhirCanonical> derivedFrom;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final List<FhirCode> subjectType;
  final List<PrimitiveElement> subjectTypeElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final FhirDate approvalDate;
  final PrimitiveElement approvalDateElement;
  final FhirDate lastReviewDate;
  final PrimitiveElement lastReviewDateElement;
  final Period effectivePeriod;
  final List<Coding> code;
  final List<QuestionnaireItem> item;
}

@Data()
@JsonCodable()
class QuestionnaireItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String linkId;
  final PrimitiveElement linkIdElement;
  final FhirUri definition;
  final PrimitiveElement definitionElement;
  final List<Coding> code;
  final String prefix;
  final PrimitiveElement prefixElement;
  final String text;
  final PrimitiveElement textElement;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final List<QuestionnaireEnableWhen> enableWhen;
  final FhirCode enableBehavior;
  final PrimitiveElement enableBehaviorElement;
  final FhirBoolean required_;
  final PrimitiveElement requiredElement;
  final FhirBoolean repeats;
  final PrimitiveElement repeatsElement;
  final FhirBoolean readOnly;
  final PrimitiveElement readOnlyElement;
  final FhirInteger maxLength;
  final PrimitiveElement maxLengthElement;
  final FhirCanonical answerValueSet;
  final List<QuestionnaireAnswerOption> answerOption;
  final List<QuestionnaireInitial> initial;
  final List<QuestionnaireItem> item;
}

@Data()
@JsonCodable()
class QuestionnaireEnableWhen {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String question;
  final PrimitiveElement questionElement;
  final FhirCode operator_;
  final PrimitiveElement operatorElement;
  final bool answerBoolean;
  final PrimitiveElement answerBooleanElement;
  final double answerDecimal;
  final PrimitiveElement answerDecimalElement;
  final double answerInteger;
  final PrimitiveElement answerIntegerElement;
  final String answerDate;
  final PrimitiveElement answerDateElement;
  final String answerDateTime;
  final PrimitiveElement answerDateTimeElement;
  final String answerTime;
  final PrimitiveElement answerTimeElement;
  final String answerString;
  final PrimitiveElement answerStringElement;
  final Coding answerCoding;
  final Quantity answerQuantity;
  final Reference answerReference;
}

@Data()
@JsonCodable()
class QuestionnaireAnswerOption {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final double valueInteger;
  final PrimitiveElement valueIntegerElement;
  final String valueDate;
  final PrimitiveElement valueDateElement;
  final String valueTime;
  final PrimitiveElement valueTimeElement;
  final String valueString;
  final PrimitiveElement valueStringElement;
  final Coding valueCoding;
  final Reference valueReference;
  final FhirBoolean initialSelected;
  final PrimitiveElement initialSelectedElement;
}

@Data()
@JsonCodable()
class QuestionnaireInitial {
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
class QuestionnaireResponse {
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
  final Identifier identifier;
  final List<Reference> basedOn;
  final List<Reference> partOf;
  final FhirCanonical questionnaire;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime authored;
  final PrimitiveElement authoredElement;
  final Reference author;
  final Reference source;
  final List<QuestionnaireResponseItem> item;
}

@Data()
@JsonCodable()
class QuestionnaireResponseItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String linkId;
  final PrimitiveElement linkIdElement;
  final FhirUri definition;
  final PrimitiveElement definitionElement;
  final String text;
  final PrimitiveElement textElement;
  final List<QuestionnaireResponseAnswer> answer;
  final List<QuestionnaireResponseItem> item;
}

@Data()
@JsonCodable()
class QuestionnaireResponseAnswer {
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
  final List<QuestionnaireResponseItem> item;
}


