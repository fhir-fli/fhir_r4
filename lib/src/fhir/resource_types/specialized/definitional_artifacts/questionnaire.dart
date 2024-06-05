// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'questionnaire.freezed.dart';
part 'questionnaire.g.dart';

/// [Questionnaire] A structured set of questions intended to guide the
@freezed
class Questionnaire with _$Questionnaire implements DomainResource {
  /// [Questionnaire] A structured set of questions intended to guide the
  const Questionnaire._();

  /// [Questionnaire] A structured set of questions intended to guide the
  /// collection of answers from end-users. Questionnaires provide detailed
  /// control over order, presentation, phraseology and grouping to allow
  ///  coherent, consistent data collection.
  ///
  /// [resourceType] This is a Questionnaire resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [url] An absolute URI that is used to identify this questionnaire when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// questionnaire is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the questionnaire is
  ///  stored on different servers.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this
  /// questionnaire when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  ///
  /// [version] The identifier that is used to identify this version of the
  /// questionnaire when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the questionnaire author
  /// and is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the questionnaire. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the questionnaire.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [derivedFrom] The URL of a Questionnaire that this Questionnaire is based
  ///  on.
  ///
  /// [status] The status of this questionnaire. Enables tracking the
  ///  life-cycle of the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this questionnaire is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  ///
  /// [experimentalElement] Extensions for experimental
  ///
  /// [subjectType] The types of subjects that can be the subject of responses
  ///  created for the questionnaire.
  ///
  /// [subjectTypeElement] Extensions for subjectType
  ///
  /// [date] The date  (and optionally time) when the questionnaire was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the questionnaire changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  questionnaire.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the
  ///  questionnaire from a consumer's perspective.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate questionnaire instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the questionnaire is
  ///  intended to be used.
  ///
  /// [purpose] Explanation of why this questionnaire is needed and why it has
  ///  been designed as it has.
  ///
  /// [purposeElement] Extensions for purpose
  ///
  /// [copyright] A copyright statement relating to the questionnaire and/or
  /// its contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the questionnaire.
  ///
  /// [copyrightElement] Extensions for copyright
  ///
  /// [approvalDate] The date on which the resource content was approved by the
  /// publisher. Approval happens once when the content is officially approved
  ///  for usage.
  ///
  /// [approvalDateElement] Extensions for approvalDate
  ///
  /// [lastReviewDate] The date on which the resource content was last
  /// reviewed. Review happens periodically after approval but does not change
  ///  the original approval date.
  ///
  /// [lastReviewDateElement] Extensions for lastReviewDate
  ///
  /// [effectivePeriod] The period during which the questionnaire content was
  ///  or is planned to be in active use.
  ///
  /// [code] An identifier for this question or group of questions in a
  ///  particular terminology such as LOINC.
  ///
  /// [item] A particular question, question grouping or display text that is
  ///  part of the questionnaire.
  const factory Questionnaire({
    @Default(R4ResourceType.Questionnaire)
    @JsonKey(unknownEnumValue: R4ResourceType.Questionnaire)

    /// [resourceType] This is a Questionnaire resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [url] An absolute URI that is used to identify this questionnaire when it
    /// is referenced in a specification, model, design or an instance; also
    /// called its canonical identifier. This SHOULD be globally unique and SHOULD
    /// be a literal address at which at which an authoritative instance of this
    /// questionnaire is (or will be) published. This URL can be the target of a
    /// canonical reference. It SHALL remain the same when the questionnaire is
    ///  stored on different servers.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [identifier] A formal identifier that is used to identify this
    /// questionnaire when it is represented in other formats, or referenced in a
    ///  specification, model, design or an instance.
    List<Identifier>? identifier,

    /// [version] The identifier that is used to identify this version of the
    /// questionnaire when it is referenced in a specification, model, design or
    /// instance. This is an arbitrary value managed by the questionnaire author
    /// and is not expected to be globally unique. For example, it might be a
    /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
    /// also no expectation that versions can be placed in a lexicographical
    ///  sequence.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [name] A natural language name identifying the questionnaire. This name
    /// should be usable as an identifier for the module by machine processing
    ///  applications such as code generation.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [title] A short, descriptive, user-friendly title for the questionnaire.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [derivedFrom] The URL of a Questionnaire that this Questionnaire is based
    ///  on.
    List<FhirCanonical>? derivedFrom,

    /// [status] The status of this questionnaire. Enables tracking the
    ///  life-cycle of the content.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [experimental] A Boolean value to indicate that this questionnaire is
    /// authored for testing purposes (or education/evaluation/marketing) and is
    ///  not intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] Extensions for experimental
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,

    /// [subjectType] The types of subjects that can be the subject of responses
    ///  created for the questionnaire.
    List<FhirCode>? subjectType,

    /// [subjectTypeElement] Extensions for subjectType
    @JsonKey(name: '_subjectType') List<Element?>? subjectTypeElement,

    /// [date] The date  (and optionally time) when the questionnaire was
    /// published. The date must change when the business version changes and it
    /// must change if the status code changes. In addition, it should change when
    ///  the substantive content of the questionnaire changes.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [publisher] The name of the organization or individual that published the
    ///  questionnaire.
    String? publisher,

    /// [publisherElement] Extensions for publisher
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the
    ///  questionnaire from a consumer's perspective.
    FhirMarkdown? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    /// supporting the contexts that are listed. These contexts may be general
    /// categories (gender, age, ...) or may be references to specific programs
    /// (insurance plans, studies, ...) and may be used to assist with indexing
    ///  and searching for appropriate questionnaire instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the questionnaire is
    ///  intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this questionnaire is needed and why it has
    ///  been designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] Extensions for purpose
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,

    /// [copyright] A copyright statement relating to the questionnaire and/or
    /// its contents. Copyright statements are generally legal restrictions on the
    ///  use and publishing of the questionnaire.
    FhirMarkdown? copyright,

    /// [copyrightElement] Extensions for copyright
    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,

    /// [approvalDate] The date on which the resource content was approved by the
    /// publisher. Approval happens once when the content is officially approved
    ///  for usage.
    FhirDate? approvalDate,

    /// [approvalDateElement] Extensions for approvalDate
    @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,

    /// [lastReviewDate] The date on which the resource content was last
    /// reviewed. Review happens periodically after approval but does not change
    ///  the original approval date.
    FhirDate? lastReviewDate,

    /// [lastReviewDateElement] Extensions for lastReviewDate
    @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,

    /// [effectivePeriod] The period during which the questionnaire content was
    ///  or is planned to be in active use.
    Period? effectivePeriod,

    /// [code] An identifier for this question or group of questions in a
    ///  particular terminology such as LOINC.
    List<Coding>? code,

    /// [item] A particular question, question grouping or display text that is
    ///  part of the questionnaire.
    List<QuestionnaireItem>? item,
  }) = _Questionnaire;

  @override
  String get fhirType => 'Questionnaire';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Questionnaire.fromYaml(dynamic yaml) => yaml is String
      ? Questionnaire.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Questionnaire.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Questionnaire cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Questionnaire.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireFromJson(json);

  /// Acts like a constructor, returns a [Questionnaire], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Questionnaire.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$QuestionnaireFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

/// [QuestionnaireItem] A structured set of questions intended to guide the
@freezed

/// [QuestionnaireItem] A structured set of questions intended to guide the
@freezed
class QuestionnaireItem with _$QuestionnaireItem implements BackboneElement {
  /// [QuestionnaireItem] A structured set of questions intended to guide the
  const QuestionnaireItem._();

  /// [QuestionnaireItem] A structured set of questions intended to guide the
  /// collection of answers from end-users. Questionnaires provide detailed
  /// control over order, presentation, phraseology and grouping to allow
  ///  coherent, consistent data collection.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [linkId] An identifier that is unique within the Questionnaire allowing
  ///  linkage to the equivalent item in a QuestionnaireResponse resource.
  ///
  /// [linkIdElement] Extensions for linkId
  ///
  /// [definition] This element is a URI that refers to an
  ///
  /// [[[ElementDefinition]]] that provides information about this item,
  /// including information that might otherwise be included in the instance of
  /// the Questionnaire resource. A detailed description of the construction of
  /// the URI is shown in Comments, below. If this element is present then the
  /// following element values MAY be derived from the Element Definition if the
  /// corresponding elements of this Questionnaire resource instance have no
  ///  value:
  /// * code (ElementDefinition.code)
  /// * type (ElementDefinition.type)
  /// * required (ElementDefinition.min)
  /// * repeats (ElementDefinition.max)
  /// * maxLength (ElementDefinition.maxLength)
  /// * answerValueSet (ElementDefinition.binding)
  /// * options (ElementDefinition.binding).
  ///
  /// [definitionElement] Extensions for definition
  ///
  /// [code] A terminology code that corresponds to this group or question
  ///  (e.g. a code from LOINC, which defines many questions and answers).
  ///
  /// [prefix] A short label for a particular group, question or set of display
  /// text within the questionnaire used for reference by the individual
  ///  completing the questionnaire.
  ///
  /// [prefixElement] Extensions for prefix
  ///
  /// [text] The name of a section, the text of a question or text content for
  ///  a display item.
  ///
  /// [textElement] Extensions for text
  ///
  /// [type] The type of questionnaire item this is - whether text for display,
  /// a grouping of other items or a particular type of data to be captured
  ///  (string, integer, coded choice, etc.).
  ///
  /// [typeElement] Extensions for type
  ///
  /// [enableWhen] A constraint indicating that this item should only be
  /// enabled (displayed/allow answers to be captured) when the specified
  ///  condition is true.
  ///
  /// [enableBehavior] Controls how multiple enableWhen values are interpreted
  ///  -  whether all or any must be true.
  ///
  /// [enableBehaviorElement] Extensions for enableBehavior
  ///
  /// [required] An indication, if true, that the item must be present in a
  /// "completed" QuestionnaireResponse.  If false, the item may be skipped when
  ///  answering the questionnaire.
  ///
  /// [requiredElement] Extensions for required
  ///
  /// [repeats] An indication, if true, that the item may occur multiple times
  /// in the response, collecting multiple answers for questions or multiple
  ///  sets of answers for groups.
  ///
  /// [repeatsElement] Extensions for repeats
  ///
  /// [readOnly] An indication, when true, that the value cannot be changed by
  ///  a human respondent to the Questionnaire.
  ///
  /// [readOnlyElement] Extensions for readOnly
  ///
  /// [maxLength] The maximum number of characters that are permitted in the
  ///  answer to be considered a "valid" QuestionnaireResponse.
  ///
  /// [maxLengthElement] Extensions for maxLength
  ///
  /// [answerValueSet] A reference to a value set containing a list of codes
  ///  representing permitted answers for a "choice" or "open-choice" question.
  ///
  /// [answerOption] One of the permitted answers for a "choice" or
  ///  "open-choice" question.
  ///
  /// [initial] One or more values that should be pre-populated in the answer
  ///  when initially rendering the questionnaire for user input.
  ///
  /// [item] Text, questions and other groups to be nested beneath a question
  ///  or group.
  const factory QuestionnaireItem({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [linkId] An identifier that is unique within the Questionnaire allowing
    ///  linkage to the equivalent item in a QuestionnaireResponse resource.
    required String linkId,

    /// [linkIdElement] Extensions for linkId
    @JsonKey(name: '_linkId') PrimitiveElement? linkIdElement,

    /// [definition] This element is a URI that refers to an
    FhirUri? definition,

    /// [definitionElement] Extensions for definition
    @JsonKey(name: '_definition') PrimitiveElement? definitionElement,

    /// [code] A terminology code that corresponds to this group or question
    ///  (e.g. a code from LOINC, which defines many questions and answers).
    List<Coding>? code,

    /// [prefix] A short label for a particular group, question or set of display
    /// text within the questionnaire used for reference by the individual
    ///  completing the questionnaire.
    String? prefix,

    /// [prefixElement] Extensions for prefix
    @JsonKey(name: '_prefix') PrimitiveElement? prefixElement,

    /// [text] The name of a section, the text of a question or text content for
    ///  a display item.
    String? text,

    /// [textElement] Extensions for text
    @JsonKey(name: '_text') PrimitiveElement? textElement,

    /// [type] The type of questionnaire item this is - whether text for display,
    /// a grouping of other items or a particular type of data to be captured
    ///  (string, integer, coded choice, etc.).
    required FhirCode type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [enableWhen] A constraint indicating that this item should only be
    /// enabled (displayed/allow answers to be captured) when the specified
    ///  condition is true.
    List<QuestionnaireEnableWhen>? enableWhen,

    /// [enableBehavior] Controls how multiple enableWhen values are interpreted
    ///  -  whether all or any must be true.
    FhirCode? enableBehavior,

    /// [enableBehaviorElement] Extensions for enableBehavior
    @JsonKey(name: '_enableBehavior') PrimitiveElement? enableBehaviorElement,

    /// [required] An indication, if true, that the item must be present in a
    /// "completed" QuestionnaireResponse.  If false, the item may be skipped when
    ///  answering the questionnaire.
    @JsonKey(name: 'required') FhirBoolean? required_,

    /// [requiredElement] Extensions for required
    @JsonKey(name: '_required') PrimitiveElement? requiredElement,

    /// [repeats] An indication, if true, that the item may occur multiple times
    /// in the response, collecting multiple answers for questions or multiple
    ///  sets of answers for groups.
    FhirBoolean? repeats,

    /// [repeatsElement] Extensions for repeats
    @JsonKey(name: '_repeats') PrimitiveElement? repeatsElement,

    /// [readOnly] An indication, when true, that the value cannot be changed by
    ///  a human respondent to the Questionnaire.
    FhirBoolean? readOnly,

    /// [readOnlyElement] Extensions for readOnly
    @JsonKey(name: '_readOnly') PrimitiveElement? readOnlyElement,

    /// [maxLength] The maximum number of characters that are permitted in the
    ///  answer to be considered a "valid" QuestionnaireResponse.
    FhirInteger? maxLength,

    /// [maxLengthElement] Extensions for maxLength
    @JsonKey(name: '_maxLength') PrimitiveElement? maxLengthElement,

    /// [answerValueSet] A reference to a value set containing a list of codes
    ///  representing permitted answers for a "choice" or "open-choice" question.
    FhirCanonical? answerValueSet,

    /// [answerOption] One of the permitted answers for a "choice" or
    ///  "open-choice" question.
    List<QuestionnaireAnswerOption>? answerOption,

    /// [initial] One or more values that should be pre-populated in the answer
    ///  when initially rendering the questionnaire for user input.
    List<QuestionnaireInitial>? initial,

    /// [item] Text, questions and other groups to be nested beneath a question
    ///  or group.
    List<QuestionnaireItem>? item,
  }) = _QuestionnaireItem;

  @override
  String get fhirType => 'QuestionnaireItem';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory QuestionnaireItem.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? QuestionnaireItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'QuestionnaireItem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireItem.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireItemFromJson(json);

  /// Acts like a constructor, returns a [QuestionnaireItem], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory QuestionnaireItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$QuestionnaireItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [QuestionnaireEnableWhen] A structured set of questions intended to
@freezed

/// [QuestionnaireEnableWhen] A structured set of questions intended to
@freezed
class QuestionnaireEnableWhen
    with _$QuestionnaireEnableWhen
    implements BackboneElement {
  /// [QuestionnaireEnableWhen] A structured set of questions intended to
  const QuestionnaireEnableWhen._();

  /// [QuestionnaireEnableWhen] A structured set of questions intended to
  /// guide the collection of answers from end-users. Questionnaires provide
  /// detailed control over order, presentation, phraseology and grouping to
  ///  allow coherent, consistent data collection.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [question] The linkId for the question whose answer (or lack of answer)
  ///  governs whether this item is enabled.
  ///
  /// [questionElement] Extensions for question
  ///
  /// [operator] Specifies the criteria by which the question is enabled.
  ///
  /// [operatorElement] Extensions for operator
  ///
  /// [answerBoolean] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  ///
  /// [answerBooleanElement] Extensions for answerBoolean
  ///
  /// [answerDecimal] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  ///
  /// [answerDecimalElement] Extensions for answerDecimal
  ///
  /// [answerInteger] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  ///
  /// [answerIntegerElement] Extensions for answerInteger
  ///
  /// [answerDate] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  ///
  /// [answerDateElement] Extensions for answerDate
  ///
  /// [answerDateTime] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  ///
  /// [answerDateTimeElement] Extensions for answerDateTime
  ///
  /// [answerTime] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  ///
  /// [answerTimeElement] Extensions for answerTime
  ///
  /// [answerString] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  ///
  /// [answerStringElement] Extensions for answerString
  ///
  /// [answerCoding] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  ///
  /// [answerQuantity] A value that the referenced question is tested using the
  ///  specified operator in order for the item to be enabled.
  ///
  /// [answerReference] A value that the referenced question is tested using
  ///  the specified operator in order for the item to be enabled.
  const factory QuestionnaireEnableWhen({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [question] The linkId for the question whose answer (or lack of answer)
    ///  governs whether this item is enabled.
    String? question,

    /// [questionElement] Extensions for question
    @JsonKey(name: '_question') PrimitiveElement? questionElement,

    /// [operator] Specifies the criteria by which the question is enabled.
    @JsonKey(name: 'operator') FhirCode? operator_,

    /// [operatorElement] Extensions for operator
    @JsonKey(name: '_operator') PrimitiveElement? operatorElement,

    /// [answerBoolean] A value that the referenced question is tested using the
    ///  specified operator in order for the item to be enabled.
    FhirBoolean? answerBoolean,

    /// [answerBooleanElement] Extensions for answerBoolean
    @JsonKey(name: '_answerBoolean') PrimitiveElement? answerBooleanElement,

    /// [answerDecimal] A value that the referenced question is tested using the
    ///  specified operator in order for the item to be enabled.
    FhirDecimal? answerDecimal,

    /// [answerDecimalElement] Extensions for answerDecimal
    @JsonKey(name: '_answerDecimal') PrimitiveElement? answerDecimalElement,

    /// [answerInteger] A value that the referenced question is tested using the
    ///  specified operator in order for the item to be enabled.
    FhirInteger? answerInteger,

    /// [answerIntegerElement] Extensions for answerInteger
    @JsonKey(name: '_answerInteger') PrimitiveElement? answerIntegerElement,

    /// [answerDate] A value that the referenced question is tested using the
    ///  specified operator in order for the item to be enabled.
    FhirDate? answerDate,

    /// [answerDateElement] Extensions for answerDate
    @JsonKey(name: '_answerDate') PrimitiveElement? answerDateElement,

    /// [answerDateTime] A value that the referenced question is tested using the
    ///  specified operator in order for the item to be enabled.
    FhirDateTime? answerDateTime,

    /// [answerDateTimeElement] Extensions for answerDateTime
    @JsonKey(name: '_answerDateTime') PrimitiveElement? answerDateTimeElement,

    /// [answerTime] A value that the referenced question is tested using the
    ///  specified operator in order for the item to be enabled.
    FhirTime? answerTime,

    /// [answerTimeElement] Extensions for answerTime
    @JsonKey(name: '_answerTime') PrimitiveElement? answerTimeElement,

    /// [answerString] A value that the referenced question is tested using the
    ///  specified operator in order for the item to be enabled.
    String? answerString,

    /// [answerStringElement] Extensions for answerString
    @JsonKey(name: '_answerString') PrimitiveElement? answerStringElement,

    /// [answerCoding] A value that the referenced question is tested using the
    ///  specified operator in order for the item to be enabled.
    Coding? answerCoding,

    /// [answerQuantity] A value that the referenced question is tested using the
    ///  specified operator in order for the item to be enabled.
    Quantity? answerQuantity,

    /// [answerReference] A value that the referenced question is tested using
    ///  the specified operator in order for the item to be enabled.
    Reference? answerReference,
  }) = _QuestionnaireEnableWhen;

  @override
  String get fhirType => 'QuestionnaireEnableWhen';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory QuestionnaireEnableWhen.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireEnableWhen.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? QuestionnaireEnableWhen.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'QuestionnaireEnableWhen cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireEnableWhen.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireEnableWhenFromJson(json);

  /// Acts like a constructor, returns a [QuestionnaireEnableWhen], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory QuestionnaireEnableWhen.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$QuestionnaireEnableWhenFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [QuestionnaireAnswerOption] A structured set of questions intended to
@freezed

/// [QuestionnaireAnswerOption] A structured set of questions intended to
@freezed
class QuestionnaireAnswerOption
    with _$QuestionnaireAnswerOption
    implements BackboneElement {
  /// [QuestionnaireAnswerOption] A structured set of questions intended to
  const QuestionnaireAnswerOption._();

  /// [QuestionnaireAnswerOption] A structured set of questions intended to
  /// guide the collection of answers from end-users. Questionnaires provide
  /// detailed control over order, presentation, phraseology and grouping to
  ///  allow coherent, consistent data collection.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [valueInteger] A potential answer that's allowed as the answer to this
  ///  question.
  ///
  /// [valueIntegerElement] Extensions for valueInteger
  ///
  /// [valueDate] A potential answer that's allowed as the answer to this
  ///  question.
  ///
  /// [valueDateElement] Extensions for valueDate
  ///
  /// [valueTime] A potential answer that's allowed as the answer to this
  ///  question.
  ///
  /// [valueTimeElement] Extensions for valueTime
  ///
  /// [valueString] A potential answer that's allowed as the answer to this
  ///  question.
  ///
  /// [valueStringElement] Extensions for valueString
  ///
  /// [valueCoding] A potential answer that's allowed as the answer to this
  ///  question.
  ///
  /// [valueReference] A potential answer that's allowed as the answer to this
  ///  question.
  ///
  /// [initialSelected] Indicates whether the answer value is selected when the
  ///  list of possible answers is initially shown.
  ///
  /// [initialSelectedElement] Extensions for initialSelected
  const factory QuestionnaireAnswerOption({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [valueInteger] A potential answer that's allowed as the answer to this
    ///  question.
    FhirInteger? valueInteger,

    /// [valueIntegerElement] Extensions for valueInteger
    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,

    /// [valueDate] A potential answer that's allowed as the answer to this
    ///  question.
    FhirDate? valueDate,

    /// [valueDateElement] Extensions for valueDate
    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,

    /// [valueTime] A potential answer that's allowed as the answer to this
    ///  question.
    FhirTime? valueTime,

    /// [valueTimeElement] Extensions for valueTime
    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,

    /// [valueString] A potential answer that's allowed as the answer to this
    ///  question.
    String? valueString,

    /// [valueStringElement] Extensions for valueString
    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,

    /// [valueCoding] A potential answer that's allowed as the answer to this
    ///  question.
    Coding? valueCoding,

    /// [valueReference] A potential answer that's allowed as the answer to this
    ///  question.
    Reference? valueReference,

    /// [initialSelected] Indicates whether the answer value is selected when the
    ///  list of possible answers is initially shown.
    FhirBoolean? initialSelected,

    /// [initialSelectedElement] Extensions for initialSelected
    @JsonKey(name: '_initialSelected') PrimitiveElement? initialSelectedElement,
  }) = _QuestionnaireAnswerOption;

  @override
  String get fhirType => 'QuestionnaireAnswerOption';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory QuestionnaireAnswerOption.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireAnswerOption.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? QuestionnaireAnswerOption.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'QuestionnaireAnswerOption cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireAnswerOption.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireAnswerOptionFromJson(json);

  /// Acts like a constructor, returns a [QuestionnaireAnswerOption], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory QuestionnaireAnswerOption.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$QuestionnaireAnswerOptionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [QuestionnaireInitial] A structured set of questions intended to guide
@freezed

/// [QuestionnaireInitial] A structured set of questions intended to guide
@freezed
class QuestionnaireInitial
    with _$QuestionnaireInitial
    implements BackboneElement {
  /// [QuestionnaireInitial] A structured set of questions intended to guide
  const QuestionnaireInitial._();

  /// [QuestionnaireInitial] A structured set of questions intended to guide
  /// the collection of answers from end-users. Questionnaires provide detailed
  /// control over order, presentation, phraseology and grouping to allow
  ///  coherent, consistent data collection.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [valueBoolean] The actual value to for an initial answer.
  ///
  /// [valueBooleanElement] Extensions for valueBoolean
  ///
  /// [valueDecimal] The actual value to for an initial answer.
  ///
  /// [valueDecimalElement] Extensions for valueDecimal
  ///
  /// [valueInteger] The actual value to for an initial answer.
  ///
  /// [valueIntegerElement] Extensions for valueInteger
  ///
  /// [valueDate] The actual value to for an initial answer.
  ///
  /// [valueDateElement] Extensions for valueDate
  ///
  /// [valueDateTime] The actual value to for an initial answer.
  ///
  /// [valueDateTimeElement] Extensions for valueDateTime
  ///
  /// [valueTime] The actual value to for an initial answer.
  ///
  /// [valueTimeElement] Extensions for valueTime
  ///
  /// [valueString] The actual value to for an initial answer.
  ///
  /// [valueStringElement] Extensions for valueString
  ///
  /// [valueUri] The actual value to for an initial answer.
  ///
  /// [valueUriElement] Extensions for valueUri
  ///
  /// [valueAttachment] The actual value to for an initial answer.
  ///
  /// [valueCoding] The actual value to for an initial answer.
  ///
  /// [valueQuantity] The actual value to for an initial answer.
  ///
  /// [valueReference] The actual value to for an initial answer.
  const factory QuestionnaireInitial({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [valueBoolean] The actual value to for an initial answer.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,

    /// [valueDecimal] The actual value to for an initial answer.
    FhirDecimal? valueDecimal,

    /// [valueDecimalElement] Extensions for valueDecimal
    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,

    /// [valueInteger] The actual value to for an initial answer.
    FhirInteger? valueInteger,

    /// [valueIntegerElement] Extensions for valueInteger
    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,

    /// [valueDate] The actual value to for an initial answer.
    FhirDate? valueDate,

    /// [valueDateElement] Extensions for valueDate
    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,

    /// [valueDateTime] The actual value to for an initial answer.
    FhirDateTime? valueDateTime,

    /// [valueDateTimeElement] Extensions for valueDateTime
    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,

    /// [valueTime] The actual value to for an initial answer.
    FhirTime? valueTime,

    /// [valueTimeElement] Extensions for valueTime
    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,

    /// [valueString] The actual value to for an initial answer.
    String? valueString,

    /// [valueStringElement] Extensions for valueString
    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,

    /// [valueUri] The actual value to for an initial answer.
    FhirUri? valueUri,

    /// [valueUriElement] Extensions for valueUri
    @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,

    /// [valueAttachment] The actual value to for an initial answer.
    Attachment? valueAttachment,

    /// [valueCoding] The actual value to for an initial answer.
    Coding? valueCoding,

    /// [valueQuantity] The actual value to for an initial answer.
    Quantity? valueQuantity,

    /// [valueReference] The actual value to for an initial answer.
    Reference? valueReference,
  }) = _QuestionnaireInitial;

  @override
  String get fhirType => 'QuestionnaireInitial';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory QuestionnaireInitial.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireInitial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? QuestionnaireInitial.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'QuestionnaireInitial cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory QuestionnaireInitial.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireInitialFromJson(json);

  /// Acts like a constructor, returns a [QuestionnaireInitial], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory QuestionnaireInitial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$QuestionnaireInitialFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
