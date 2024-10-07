import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Questionnaire] /// A structured set of questions intended to guide the collection of answers
/// from end-users. Questionnaires provide detailed control over order,
/// presentation, phraseology and grouping to allow coherent, consistent data
/// collection.
class Questionnaire extends DomainResource {
  Questionnaire({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.derivedFrom,
    this.derivedFromElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.subjectType,
    this.subjectTypeElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.effectivePeriod,
    this.code,
    this.item,
  }) : super(resourceType: R4ResourceType.Questionnaire);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this questionnaire when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this
  /// questionnaire is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the questionnaire is
  /// stored on different servers.
  final FhirUri? url;
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this questionnaire when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the questionnaire
  /// when it is referenced in a specification, model, design or instance. This
  /// is an arbitrary value managed by the questionnaire author and is not
  /// expected to be globally unique. For example, it might be a timestamp (e.g.
  /// yyyymmdd) if a managed version is not available. There is also no
  /// expectation that versions can be placed in a lexicographical sequence.
  final FhirString? version;
  final Element? versionElement;

  /// [name] /// A natural language name identifying the questionnaire. This name should be
  /// usable as an identifier for the module by machine processing applications
  /// such as code generation.
  final FhirString? name;
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the questionnaire.
  final FhirString? title;
  final Element? titleElement;

  /// [derivedFrom] /// The URL of a Questionnaire that this Questionnaire is based on.
  final List<FhirCanonical>? derivedFrom;
  final List<Element>? derivedFromElement;

  /// [status] /// The status of this questionnaire. Enables tracking the life-cycle of the
  /// content.
  final FhirCode status;
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this questionnaire is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  final FhirBoolean? experimental;
  final Element? experimentalElement;

  /// [subjectType] /// The types of subjects that can be the subject of responses created for the
  /// questionnaire.
  final List<FhirCode>? subjectType;
  final List<Element>? subjectTypeElement;

  /// [date] /// The date (and optionally time) when the questionnaire was published. The
  /// date must change when the business version changes and it must change if
  /// the status code changes. In addition, it should change when the substantive
  /// content of the questionnaire changes.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the
  /// questionnaire.
  final FhirString? publisher;
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the questionnaire from a
  /// consumer's perspective.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate questionnaire instances.
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the questionnaire is intended to be
  /// used.
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this questionnaire is needed and why it has been
  /// designed as it has.
  final FhirMarkdown? purpose;
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the questionnaire and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the questionnaire.
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  /// [approvalDate] /// The date on which the resource content was approved by the publisher.
  /// Approval happens once when the content is officially approved for usage.
  final FhirDate? approvalDate;
  final Element? approvalDateElement;

  /// [lastReviewDate] /// The date on which the resource content was last reviewed. Review happens
  /// periodically after approval but does not change the original approval date.
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;

  /// [effectivePeriod] /// The period during which the questionnaire content was or is planned to be
  /// in active use.
  final Period? effectivePeriod;

  /// [code] /// An identifier for this question or group of questions in a particular
  /// terminology such as LOINC.
  final List<Coding>? code;

  /// [item] /// A particular question, question grouping or display text that is part of
  /// the questionnaire.
  final List<QuestionnaireItem>? item;
  @override
  Questionnaire clone() => throw UnimplementedError();
  Questionnaire copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? url,
    Element? urlElement,
    List<Identifier>? identifier,
    FhirString? version,
    Element? versionElement,
    FhirString? name,
    Element? nameElement,
    FhirString? title,
    Element? titleElement,
    List<FhirCanonical>? derivedFrom,
    List<Element>? derivedFromElement,
    FhirCode? status,
    Element? statusElement,
    FhirBoolean? experimental,
    Element? experimentalElement,
    List<FhirCode>? subjectType,
    List<Element>? subjectTypeElement,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    FhirDate? approvalDate,
    Element? approvalDateElement,
    FhirDate? lastReviewDate,
    Element? lastReviewDateElement,
    Period? effectivePeriod,
    List<Coding>? code,
    List<QuestionnaireItem>? item,
  }) {
    return Questionnaire(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      url: url ?? this.url,
      urlElement: urlElement ?? this.urlElement,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      derivedFrom: derivedFrom ?? this.derivedFrom,
      derivedFromElement: derivedFromElement ?? this.derivedFromElement,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      experimental: experimental ?? this.experimental,
      experimentalElement: experimentalElement ?? this.experimentalElement,
      subjectType: subjectType ?? this.subjectType,
      subjectTypeElement: subjectTypeElement ?? this.subjectTypeElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      approvalDate: approvalDate ?? this.approvalDate,
      approvalDateElement: approvalDateElement ?? this.approvalDateElement,
      lastReviewDate: lastReviewDate ?? this.lastReviewDate,
      lastReviewDateElement:
          lastReviewDateElement ?? this.lastReviewDateElement,
      effectivePeriod: effectivePeriod ?? this.effectivePeriod,
      code: code ?? this.code,
      item: item ?? this.item,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [QuestionnaireItem] /// A particular question, question grouping or display text that is part of
/// the questionnaire.
class QuestionnaireItem extends BackboneElement {
  QuestionnaireItem({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.linkId,
    this.linkIdElement,
    this.definition,
    this.definitionElement,
    this.code,
    this.prefix,
    this.prefixElement,
    this.text,
    this.textElement,
    required this.type,
    this.typeElement,
    this.enableWhen,
    this.enableBehavior,
    this.enableBehaviorElement,
    this.required_,
    this.requiredElement,
    this.repeats,
    this.repeatsElement,
    this.readOnly,
    this.readOnlyElement,
    this.maxLength,
    this.maxLengthElement,
    this.answerValueSet,
    this.answerValueSetElement,
    this.answerOption,
    this.initial,
    this.item,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [linkId] /// An identifier that is unique within the Questionnaire allowing linkage to
  /// the equivalent item in a QuestionnaireResponse resource.
  final FhirString linkId;
  final Element? linkIdElement;

  /// [definition] /// This element is a URI that refers to an
  /// [ElementDefinition](elementdefinition.html) that provides information about
  /// this item, including information that might otherwise be included in the
  /// instance of the Questionnaire resource. A detailed description of the
  /// construction of the URI is shown in Comments, below. If this element is
  /// present then the following element values MAY be derived from the Element
  /// Definition if the corresponding elements of this Questionnaire resource
  /// instance have no value:
  ///
  /// * code (ElementDefinition.code)
  /// * type (ElementDefinition.type)
  /// * required (ElementDefinition.min)
  /// * repeats (ElementDefinition.max)
  /// * maxLength (ElementDefinition.maxLength)
  /// * answerValueSet (ElementDefinition.binding)
  /// * options (ElementDefinition.binding).
  final FhirUri? definition;
  final Element? definitionElement;

  /// [code] /// A terminology code that corresponds to this group or question (e.g. a code
  /// from LOINC, which defines many questions and answers).
  final List<Coding>? code;

  /// [prefix] /// A short label for a particular group, question or set of display text
  /// within the questionnaire used for reference by the individual completing
  /// the questionnaire.
  final FhirString? prefix;
  final Element? prefixElement;

  /// [text] /// The name of a section, the text of a question or text content for a display
  /// item.
  final FhirString? text;
  final Element? textElement;

  /// [type] /// The type of questionnaire item this is - whether text for display, a
  /// grouping of other items or a particular type of data to be captured
  /// (string, integer, coded choice, etc.).
  final FhirCode type;
  final Element? typeElement;

  /// [enableWhen] /// A constraint indicating that this item should only be enabled
  /// (displayed/allow answers to be captured) when the specified condition is
  /// true.
  final List<QuestionnaireEnableWhen>? enableWhen;

  /// [enableBehavior] /// Controls how multiple enableWhen values are interpreted - whether all or
  /// any must be true.
  final FhirCode? enableBehavior;
  final Element? enableBehaviorElement;

  /// [required_] /// An indication, if true, that the item must be present in a "completed"
  /// QuestionnaireResponse. If false, the item may be skipped when answering the
  /// questionnaire.
  final FhirBoolean? required_;
  final Element? requiredElement;

  /// [repeats] /// An indication, if true, that the item may occur multiple times in the
  /// response, collecting multiple answers for questions or multiple sets of
  /// answers for groups.
  final FhirBoolean? repeats;
  final Element? repeatsElement;

  /// [readOnly] /// An indication, when true, that the value cannot be changed by a human
  /// respondent to the Questionnaire.
  final FhirBoolean? readOnly;
  final Element? readOnlyElement;

  /// [maxLength] /// The maximum number of characters that are permitted in the answer to be
  /// considered a "valid" QuestionnaireResponse.
  final FhirInteger? maxLength;
  final Element? maxLengthElement;

  /// [answerValueSet] /// A reference to a value set containing a list of codes representing
  /// permitted answers for a "choice" or "open-choice" question.
  final FhirCanonical? answerValueSet;
  final Element? answerValueSetElement;

  /// [answerOption] /// One of the permitted answers for a "choice" or "open-choice" question.
  final List<QuestionnaireAnswerOption>? answerOption;

  /// [initial] /// One or more values that should be pre-populated in the answer when
  /// initially rendering the questionnaire for user input.
  final List<QuestionnaireInitial>? initial;

  /// [item] /// Text, questions and other groups to be nested beneath a question or group.
  final List<QuestionnaireItem>? item;
  @override
  QuestionnaireItem clone() => throw UnimplementedError();
  QuestionnaireItem copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? linkId,
    Element? linkIdElement,
    FhirUri? definition,
    Element? definitionElement,
    List<Coding>? code,
    FhirString? prefix,
    Element? prefixElement,
    FhirString? text,
    Element? textElement,
    FhirCode? type,
    Element? typeElement,
    List<QuestionnaireEnableWhen>? enableWhen,
    FhirCode? enableBehavior,
    Element? enableBehaviorElement,
    FhirBoolean? required_,
    Element? requiredElement,
    FhirBoolean? repeats,
    Element? repeatsElement,
    FhirBoolean? readOnly,
    Element? readOnlyElement,
    FhirInteger? maxLength,
    Element? maxLengthElement,
    FhirCanonical? answerValueSet,
    Element? answerValueSetElement,
    List<QuestionnaireAnswerOption>? answerOption,
    List<QuestionnaireInitial>? initial,
    List<QuestionnaireItem>? item,
  }) {
    return QuestionnaireItem(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      linkId: linkId ?? this.linkId,
      linkIdElement: linkIdElement ?? this.linkIdElement,
      definition: definition ?? this.definition,
      definitionElement: definitionElement ?? this.definitionElement,
      code: code ?? this.code,
      prefix: prefix ?? this.prefix,
      prefixElement: prefixElement ?? this.prefixElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      enableWhen: enableWhen ?? this.enableWhen,
      enableBehavior: enableBehavior ?? this.enableBehavior,
      enableBehaviorElement:
          enableBehaviorElement ?? this.enableBehaviorElement,
      required_: required_ ?? this.required_,
      requiredElement: requiredElement ?? this.requiredElement,
      repeats: repeats ?? this.repeats,
      repeatsElement: repeatsElement ?? this.repeatsElement,
      readOnly: readOnly ?? this.readOnly,
      readOnlyElement: readOnlyElement ?? this.readOnlyElement,
      maxLength: maxLength ?? this.maxLength,
      maxLengthElement: maxLengthElement ?? this.maxLengthElement,
      answerValueSet: answerValueSet ?? this.answerValueSet,
      answerValueSetElement:
          answerValueSetElement ?? this.answerValueSetElement,
      answerOption: answerOption ?? this.answerOption,
      initial: initial ?? this.initial,
      item: item ?? this.item,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [QuestionnaireEnableWhen] /// A constraint indicating that this item should only be enabled
/// (displayed/allow answers to be captured) when the specified condition is
/// true.
class QuestionnaireEnableWhen extends BackboneElement {
  QuestionnaireEnableWhen({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.question,
    this.questionElement,
    required this.operator_,
    this.operatorElement,
    required this.answerBoolean,
    this.answerBooleanElement,
    required this.answerDecimal,
    this.answerDecimalElement,
    required this.answerInteger,
    this.answerIntegerElement,
    required this.answerDate,
    this.answerDateElement,
    required this.answerDateTime,
    this.answerDateTimeElement,
    required this.answerTime,
    this.answerTimeElement,
    required this.answerString,
    this.answerStringElement,
    required this.answerCoding,
    required this.answerQuantity,
    required this.answerReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [question] /// The linkId for the question whose answer (or lack of answer) governs
  /// whether this item is enabled.
  final FhirString question;
  final Element? questionElement;

  /// [operator_] /// Specifies the criteria by which the question is enabled.
  final FhirCode operator_;
  final Element? operatorElement;

  /// [answerBoolean] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final FhirBoolean answerBoolean;
  final Element? answerBooleanElement;

  /// [answerDecimal] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final FhirDecimal answerDecimal;
  final Element? answerDecimalElement;

  /// [answerInteger] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final FhirInteger answerInteger;
  final Element? answerIntegerElement;

  /// [answerDate] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final FhirDate answerDate;
  final Element? answerDateElement;

  /// [answerDateTime] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final FhirDateTime answerDateTime;
  final Element? answerDateTimeElement;

  /// [answerTime] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final FhirTime answerTime;
  final Element? answerTimeElement;

  /// [answerString] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final FhirString answerString;
  final Element? answerStringElement;

  /// [answerCoding] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final Coding answerCoding;

  /// [answerQuantity] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final Quantity answerQuantity;

  /// [answerReference] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final Reference answerReference;
  @override
  QuestionnaireEnableWhen clone() => throw UnimplementedError();
  QuestionnaireEnableWhen copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? question,
    Element? questionElement,
    FhirCode? operator_,
    Element? operatorElement,
    FhirBoolean? answerBoolean,
    Element? answerBooleanElement,
    FhirDecimal? answerDecimal,
    Element? answerDecimalElement,
    FhirInteger? answerInteger,
    Element? answerIntegerElement,
    FhirDate? answerDate,
    Element? answerDateElement,
    FhirDateTime? answerDateTime,
    Element? answerDateTimeElement,
    FhirTime? answerTime,
    Element? answerTimeElement,
    FhirString? answerString,
    Element? answerStringElement,
    Coding? answerCoding,
    Quantity? answerQuantity,
    Reference? answerReference,
  }) {
    return QuestionnaireEnableWhen(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      question: question ?? this.question,
      questionElement: questionElement ?? this.questionElement,
      operator_: operator_ ?? this.operator_,
      operatorElement: operatorElement ?? this.operatorElement,
      answerBoolean: answerBoolean ?? this.answerBoolean,
      answerBooleanElement: answerBooleanElement ?? this.answerBooleanElement,
      answerDecimal: answerDecimal ?? this.answerDecimal,
      answerDecimalElement: answerDecimalElement ?? this.answerDecimalElement,
      answerInteger: answerInteger ?? this.answerInteger,
      answerIntegerElement: answerIntegerElement ?? this.answerIntegerElement,
      answerDate: answerDate ?? this.answerDate,
      answerDateElement: answerDateElement ?? this.answerDateElement,
      answerDateTime: answerDateTime ?? this.answerDateTime,
      answerDateTimeElement:
          answerDateTimeElement ?? this.answerDateTimeElement,
      answerTime: answerTime ?? this.answerTime,
      answerTimeElement: answerTimeElement ?? this.answerTimeElement,
      answerString: answerString ?? this.answerString,
      answerStringElement: answerStringElement ?? this.answerStringElement,
      answerCoding: answerCoding ?? this.answerCoding,
      answerQuantity: answerQuantity ?? this.answerQuantity,
      answerReference: answerReference ?? this.answerReference,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [QuestionnaireAnswerOption] /// One of the permitted answers for a "choice" or "open-choice" question.
class QuestionnaireAnswerOption extends BackboneElement {
  QuestionnaireAnswerOption({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueInteger,
    this.valueIntegerElement,
    required this.valueDate,
    this.valueDateElement,
    required this.valueTime,
    this.valueTimeElement,
    required this.valueString,
    this.valueStringElement,
    required this.valueCoding,
    required this.valueReference,
    this.initialSelected,
    this.initialSelectedElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [valueInteger] /// A potential answer that's allowed as the answer to this question.
  final FhirInteger valueInteger;
  final Element? valueIntegerElement;

  /// [valueDate] /// A potential answer that's allowed as the answer to this question.
  final FhirDate valueDate;
  final Element? valueDateElement;

  /// [valueTime] /// A potential answer that's allowed as the answer to this question.
  final FhirTime valueTime;
  final Element? valueTimeElement;

  /// [valueString] /// A potential answer that's allowed as the answer to this question.
  final FhirString valueString;
  final Element? valueStringElement;

  /// [valueCoding] /// A potential answer that's allowed as the answer to this question.
  final Coding valueCoding;

  /// [valueReference] /// A potential answer that's allowed as the answer to this question.
  final Reference valueReference;

  /// [initialSelected] /// Indicates whether the answer value is selected when the list of possible
  /// answers is initially shown.
  final FhirBoolean? initialSelected;
  final Element? initialSelectedElement;
  @override
  QuestionnaireAnswerOption clone() => throw UnimplementedError();
  QuestionnaireAnswerOption copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirDate? valueDate,
    Element? valueDateElement,
    FhirTime? valueTime,
    Element? valueTimeElement,
    FhirString? valueString,
    Element? valueStringElement,
    Coding? valueCoding,
    Reference? valueReference,
    FhirBoolean? initialSelected,
    Element? initialSelectedElement,
  }) {
    return QuestionnaireAnswerOption(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueDate: valueDate ?? this.valueDate,
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueTime: valueTime ?? this.valueTime,
      valueTimeElement: valueTimeElement ?? this.valueTimeElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueCoding: valueCoding ?? this.valueCoding,
      valueReference: valueReference ?? this.valueReference,
      initialSelected: initialSelected ?? this.initialSelected,
      initialSelectedElement:
          initialSelectedElement ?? this.initialSelectedElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [QuestionnaireInitial] /// One or more values that should be pre-populated in the answer when
/// initially rendering the questionnaire for user input.
class QuestionnaireInitial extends BackboneElement {
  QuestionnaireInitial({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.valueBoolean,
    this.valueBooleanElement,
    required this.valueDecimal,
    this.valueDecimalElement,
    required this.valueInteger,
    this.valueIntegerElement,
    required this.valueDate,
    this.valueDateElement,
    required this.valueDateTime,
    this.valueDateTimeElement,
    required this.valueTime,
    this.valueTimeElement,
    required this.valueString,
    this.valueStringElement,
    required this.valueUri,
    this.valueUriElement,
    required this.valueAttachment,
    required this.valueCoding,
    required this.valueQuantity,
    required this.valueReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [valueBoolean] /// The actual value to for an initial answer.
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;

  /// [valueDecimal] /// The actual value to for an initial answer.
  final FhirDecimal valueDecimal;
  final Element? valueDecimalElement;

  /// [valueInteger] /// The actual value to for an initial answer.
  final FhirInteger valueInteger;
  final Element? valueIntegerElement;

  /// [valueDate] /// The actual value to for an initial answer.
  final FhirDate valueDate;
  final Element? valueDateElement;

  /// [valueDateTime] /// The actual value to for an initial answer.
  final FhirDateTime valueDateTime;
  final Element? valueDateTimeElement;

  /// [valueTime] /// The actual value to for an initial answer.
  final FhirTime valueTime;
  final Element? valueTimeElement;

  /// [valueString] /// The actual value to for an initial answer.
  final FhirString valueString;
  final Element? valueStringElement;

  /// [valueUri] /// The actual value to for an initial answer.
  final FhirUri valueUri;
  final Element? valueUriElement;

  /// [valueAttachment] /// The actual value to for an initial answer.
  final Attachment valueAttachment;

  /// [valueCoding] /// The actual value to for an initial answer.
  final Coding valueCoding;

  /// [valueQuantity] /// The actual value to for an initial answer.
  final Quantity valueQuantity;

  /// [valueReference] /// The actual value to for an initial answer.
  final Reference valueReference;
  @override
  QuestionnaireInitial clone() => throw UnimplementedError();
  QuestionnaireInitial copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirDecimal? valueDecimal,
    Element? valueDecimalElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirDate? valueDate,
    Element? valueDateElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
    FhirTime? valueTime,
    Element? valueTimeElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirUri? valueUri,
    Element? valueUriElement,
    Attachment? valueAttachment,
    Coding? valueCoding,
    Quantity? valueQuantity,
    Reference? valueReference,
  }) {
    return QuestionnaireInitial(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDecimalElement: valueDecimalElement ?? this.valueDecimalElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueDate: valueDate ?? this.valueDate,
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
      valueTime: valueTime ?? this.valueTime,
      valueTimeElement: valueTimeElement ?? this.valueTimeElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueUri: valueUri ?? this.valueUri,
      valueUriElement: valueUriElement ?? this.valueUriElement,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      valueCoding: valueCoding ?? this.valueCoding,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueReference: valueReference ?? this.valueReference,
    );
  }
}
