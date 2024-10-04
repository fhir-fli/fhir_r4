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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final List<FhirCanonical> derivedFrom;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final List<FhirCode> subjectType;
  final List<PrimitiveElement> SubjectType;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirDate approvalDate;
  final PrimitiveElement ApprovalDate;
  final FhirDate lastReviewDate;
  final PrimitiveElement LastReviewDate;
  final Period effectivePeriod;
  final List<Coding> code;
  final List<QuestionnaireItem> item;
}

@Data()
@JsonCodable()
class QuestionnaireItem {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String linkId;
  final PrimitiveElement LinkId;
  final FhirUri definition;
  final PrimitiveElement Definition;
  final List<Coding> code;
  final String prefix;
  final PrimitiveElement Prefix;
  final String text;
  final PrimitiveElement Text;
  final FhirCode type;
  final PrimitiveElement Type;
  final List<QuestionnaireEnableWhen> enableWhen;
  final FhirCode enableBehavior;
  final PrimitiveElement EnableBehavior;
  final FhirBoolean required;
  final PrimitiveElement Required;
  final FhirBoolean repeats;
  final PrimitiveElement Repeats;
  final FhirBoolean readOnly;
  final PrimitiveElement ReadOnly;
  final FhirInteger maxLength;
  final PrimitiveElement MaxLength;
  final FhirCanonical answerValueSet;
  final List<QuestionnaireAnswerOption> answerOption;
  final List<QuestionnaireInitial> initial;
  final List<QuestionnaireItem> item;
}

@Data()
@JsonCodable()
class QuestionnaireEnableWhen {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String question;
  final PrimitiveElement Question;
  final FhirCode operator;
  final PrimitiveElement Operator;
  final bool answerBoolean;
  final PrimitiveElement AnswerBoolean;
  final double answerDecimal;
  final PrimitiveElement AnswerDecimal;
  final double answerInteger;
  final PrimitiveElement AnswerInteger;
  final String answerDate;
  final PrimitiveElement AnswerDate;
  final String answerDateTime;
  final PrimitiveElement AnswerDateTime;
  final String answerTime;
  final PrimitiveElement AnswerTime;
  final String answerString;
  final PrimitiveElement AnswerString;
  final Coding answerCoding;
  final Quantity answerQuantity;
  final Reference answerReference;
}

@Data()
@JsonCodable()
class QuestionnaireAnswerOption {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final String valueDate;
  final PrimitiveElement ValueDate;
  final String valueTime;
  final PrimitiveElement ValueTime;
  final String valueString;
  final PrimitiveElement ValueString;
  final Coding valueCoding;
  final Reference valueReference;
  final FhirBoolean initialSelected;
  final PrimitiveElement InitialSelected;
}

@Data()
@JsonCodable()
class QuestionnaireInitial {
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
class QuestionnaireResponse {
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
  final Identifier identifier;
  final List<Reference> basedOn;
  final List<Reference> partOf;
  final FhirCanonical questionnaire;
  final FhirCode status;
  final PrimitiveElement Status;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime authored;
  final PrimitiveElement Authored;
  final Reference author;
  final Reference source;
  final List<QuestionnaireResponseItem> item;
}

@Data()
@JsonCodable()
class QuestionnaireResponseItem {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String linkId;
  final PrimitiveElement LinkId;
  final FhirUri definition;
  final PrimitiveElement Definition;
  final String text;
  final PrimitiveElement Text;
  final List<QuestionnaireResponseAnswer> answer;
  final List<QuestionnaireResponseItem> item;
}

@Data()
@JsonCodable()
class QuestionnaireResponseAnswer {
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
  final List<QuestionnaireResponseItem> item;
}


