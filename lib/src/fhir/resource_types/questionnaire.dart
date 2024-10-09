import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.Questionnaire);

  @override
  String get fhirType => 'Questionnaire';

  @Id()
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
  final PublicationStatus status;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (url?.value != null) {
      json['url'] = url!.value;
    }
    if (urlElement != null) {
      json['_url'] = urlElement!.toJson();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (version?.value != null) {
      json['version'] = version!.value;
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    if (name?.value != null) {
      json['name'] = name!.value;
    }
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (title?.value != null) {
      json['title'] = title!.value;
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (derivedFrom != null && derivedFrom!.isNotEmpty) {
      json['derivedFrom'] =
          derivedFrom!.map((FhirCanonical v) => v.value).toList();
    }
    if (derivedFromElement != null && derivedFromElement!.isNotEmpty) {
      json['_derivedFrom'] =
          derivedFromElement!.map((Element v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    if (experimental?.value != null) {
      json['experimental'] = experimental!.value;
    }
    if (experimentalElement != null) {
      json['_experimental'] = experimentalElement!.toJson();
    }
    if (subjectType != null && subjectType!.isNotEmpty) {
      json['subjectType'] = subjectType!.map((FhirCode v) => v.value).toList();
    }
    if (subjectTypeElement != null && subjectTypeElement!.isNotEmpty) {
      json['_subjectType'] =
          subjectTypeElement!.map((Element v) => v.toJson()).toList();
    }
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (publisher?.value != null) {
      json['publisher'] = publisher!.value;
    }
    if (publisherElement != null) {
      json['_publisher'] = publisherElement!.toJson();
    }
    if (contact != null && contact!.isNotEmpty) {
      json['contact'] =
          contact!.map<dynamic>((ContactDetail v) => v.toJson()).toList();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (useContext != null && useContext!.isNotEmpty) {
      json['useContext'] =
          useContext!.map<dynamic>((UsageContext v) => v.toJson()).toList();
    }
    if (jurisdiction != null && jurisdiction!.isNotEmpty) {
      json['jurisdiction'] = jurisdiction!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (purpose?.value != null) {
      json['purpose'] = purpose!.value;
    }
    if (purposeElement != null) {
      json['_purpose'] = purposeElement!.toJson();
    }
    if (copyright?.value != null) {
      json['copyright'] = copyright!.value;
    }
    if (copyrightElement != null) {
      json['_copyright'] = copyrightElement!.toJson();
    }
    if (approvalDate?.value != null) {
      json['approvalDate'] = approvalDate!.value;
    }
    if (approvalDateElement != null) {
      json['_approvalDate'] = approvalDateElement!.toJson();
    }
    if (lastReviewDate?.value != null) {
      json['lastReviewDate'] = lastReviewDate!.value;
    }
    if (lastReviewDateElement != null) {
      json['_lastReviewDate'] = lastReviewDateElement!.toJson();
    }
    if (effectivePeriod != null) {
      json['effectivePeriod'] = effectivePeriod!.toJson();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map<dynamic>((Coding v) => v.toJson()).toList();
    }
    if (item != null && item!.isNotEmpty) {
      json['item'] =
          item!.map<dynamic>((QuestionnaireItem v) => v.toJson()).toList();
    }
    return json;
  }

  factory Questionnaire.fromJson(Map<String, dynamic> json) {
    return Questionnaire(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      url: json['url'] != null ? FhirUri(json['url']) : null,
      urlElement: json['_url'] != null
          ? Element.fromJson(json['_url'] as Map<String, dynamic>)
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      version: json['version'] != null ? FhirString(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
      name: json['name'] != null ? FhirString(json['name']) : null,
      nameElement: json['_name'] != null
          ? Element.fromJson(json['_name'] as Map<String, dynamic>)
          : null,
      title: json['title'] != null ? FhirString(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      derivedFrom: json['derivedFrom'] != null
          ? (json['derivedFrom'] as List<dynamic>)
              .map<FhirCanonical>(
                  (dynamic v) => FhirCanonical.fromJson(v as dynamic))
              .toList()
          : null,
      derivedFromElement: json['_derivedFrom'] != null
          ? (json['_derivedFrom'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status:
          PublicationStatus.fromJson(json['status'] as Map<String, dynamic>),
      experimental: json['experimental'] != null
          ? FhirBoolean(json['experimental'])
          : null,
      experimentalElement: json['_experimental'] != null
          ? Element.fromJson(json['_experimental'] as Map<String, dynamic>)
          : null,
      subjectType: json['subjectType'] != null
          ? (json['subjectType'] as List<dynamic>)
              .map<FhirCode>((dynamic v) => FhirCode.fromJson(v as dynamic))
              .toList()
          : null,
      subjectTypeElement: json['_subjectType'] != null
          ? (json['_subjectType'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      date: json['date'] != null ? FhirDateTime(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      publisher:
          json['publisher'] != null ? FhirString(json['publisher']) : null,
      publisherElement: json['_publisher'] != null
          ? Element.fromJson(json['_publisher'] as Map<String, dynamic>)
          : null,
      contact: json['contact'] != null
          ? (json['contact'] as List<dynamic>)
              .map<ContactDetail>((dynamic v) =>
                  ContactDetail.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      description: json['description'] != null
          ? FhirMarkdown(json['description'])
          : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      useContext: json['useContext'] != null
          ? (json['useContext'] as List<dynamic>)
              .map<UsageContext>((dynamic v) =>
                  UsageContext.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      jurisdiction: json['jurisdiction'] != null
          ? (json['jurisdiction'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      purpose: json['purpose'] != null ? FhirMarkdown(json['purpose']) : null,
      purposeElement: json['_purpose'] != null
          ? Element.fromJson(json['_purpose'] as Map<String, dynamic>)
          : null,
      copyright:
          json['copyright'] != null ? FhirMarkdown(json['copyright']) : null,
      copyrightElement: json['_copyright'] != null
          ? Element.fromJson(json['_copyright'] as Map<String, dynamic>)
          : null,
      approvalDate:
          json['approvalDate'] != null ? FhirDate(json['approvalDate']) : null,
      approvalDateElement: json['_approvalDate'] != null
          ? Element.fromJson(json['_approvalDate'] as Map<String, dynamic>)
          : null,
      lastReviewDate: json['lastReviewDate'] != null
          ? FhirDate(json['lastReviewDate'])
          : null,
      lastReviewDateElement: json['_lastReviewDate'] != null
          ? Element.fromJson(json['_lastReviewDate'] as Map<String, dynamic>)
          : null,
      effectivePeriod: json['effectivePeriod'] != null
          ? Period.fromJson(json['effectivePeriod'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<Coding>(
                  (dynamic v) => Coding.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<QuestionnaireItem>((dynamic v) =>
                  QuestionnaireItem.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  Questionnaire clone() => throw UnimplementedError();
  @override
  Questionnaire copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
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
    PublicationStatus? status,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Questionnaire.fromYaml(dynamic yaml) => yaml is String
      ? Questionnaire.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Questionnaire.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Questionnaire cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Questionnaire.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Questionnaire.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'QuestionnaireItem';

  @Id()
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
  final QuestionnaireItemType type;
  final Element? typeElement;

  /// [enableWhen] /// A constraint indicating that this item should only be enabled
  /// (displayed/allow answers to be captured) when the specified condition is
  /// true.
  final List<QuestionnaireEnableWhen>? enableWhen;

  /// [enableBehavior] /// Controls how multiple enableWhen values are interpreted - whether all or
  /// any must be true.
  final EnableWhenBehavior? enableBehavior;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['linkId'] = linkId.value;
    if (linkIdElement != null) {
      json['_linkId'] = linkIdElement!.toJson();
    }
    if (definition?.value != null) {
      json['definition'] = definition!.value;
    }
    if (definitionElement != null) {
      json['_definition'] = definitionElement!.toJson();
    }
    if (code != null && code!.isNotEmpty) {
      json['code'] = code!.map<dynamic>((Coding v) => v.toJson()).toList();
    }
    if (prefix?.value != null) {
      json['prefix'] = prefix!.value;
    }
    if (prefixElement != null) {
      json['_prefix'] = prefixElement!.toJson();
    }
    if (text?.value != null) {
      json['text'] = text!.value;
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    json['type'] = type.toJson();
    if (enableWhen != null && enableWhen!.isNotEmpty) {
      json['enableWhen'] = enableWhen!
          .map<dynamic>((QuestionnaireEnableWhen v) => v.toJson())
          .toList();
    }
    if (enableBehavior != null) {
      json['enableBehavior'] = enableBehavior!.toJson();
    }
    if (required_?.value != null) {
      json['required'] = required_!.value;
    }
    if (requiredElement != null) {
      json['_required'] = requiredElement!.toJson();
    }
    if (repeats?.value != null) {
      json['repeats'] = repeats!.value;
    }
    if (repeatsElement != null) {
      json['_repeats'] = repeatsElement!.toJson();
    }
    if (readOnly?.value != null) {
      json['readOnly'] = readOnly!.value;
    }
    if (readOnlyElement != null) {
      json['_readOnly'] = readOnlyElement!.toJson();
    }
    if (maxLength?.value != null) {
      json['maxLength'] = maxLength!.value;
    }
    if (maxLengthElement != null) {
      json['_maxLength'] = maxLengthElement!.toJson();
    }
    if (answerValueSet?.value != null) {
      json['answerValueSet'] = answerValueSet!.value;
    }
    if (answerValueSetElement != null) {
      json['_answerValueSet'] = answerValueSetElement!.toJson();
    }
    if (answerOption != null && answerOption!.isNotEmpty) {
      json['answerOption'] = answerOption!
          .map<dynamic>((QuestionnaireAnswerOption v) => v.toJson())
          .toList();
    }
    if (initial != null && initial!.isNotEmpty) {
      json['initial'] = initial!
          .map<dynamic>((QuestionnaireInitial v) => v.toJson())
          .toList();
    }
    if (item != null && item!.isNotEmpty) {
      json['item'] =
          item!.map<dynamic>((QuestionnaireItem v) => v.toJson()).toList();
    }
    return json;
  }

  factory QuestionnaireItem.fromJson(Map<String, dynamic> json) {
    return QuestionnaireItem(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      linkId: FhirString(json['linkId']),
      linkIdElement: json['_linkId'] != null
          ? Element.fromJson(json['_linkId'] as Map<String, dynamic>)
          : null,
      definition:
          json['definition'] != null ? FhirUri(json['definition']) : null,
      definitionElement: json['_definition'] != null
          ? Element.fromJson(json['_definition'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? (json['code'] as List<dynamic>)
              .map<Coding>(
                  (dynamic v) => Coding.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      prefix: json['prefix'] != null ? FhirString(json['prefix']) : null,
      prefixElement: json['_prefix'] != null
          ? Element.fromJson(json['_prefix'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null ? FhirString(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
      type:
          QuestionnaireItemType.fromJson(json['type'] as Map<String, dynamic>),
      enableWhen: json['enableWhen'] != null
          ? (json['enableWhen'] as List<dynamic>)
              .map<QuestionnaireEnableWhen>((dynamic v) =>
                  QuestionnaireEnableWhen.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      enableBehavior: json['enableBehavior'] != null
          ? EnableWhenBehavior.fromJson(
              json['enableBehavior'] as Map<String, dynamic>)
          : null,
      required_:
          json['required'] != null ? FhirBoolean(json['required']) : null,
      requiredElement: json['_required'] != null
          ? Element.fromJson(json['_required'] as Map<String, dynamic>)
          : null,
      repeats: json['repeats'] != null ? FhirBoolean(json['repeats']) : null,
      repeatsElement: json['_repeats'] != null
          ? Element.fromJson(json['_repeats'] as Map<String, dynamic>)
          : null,
      readOnly: json['readOnly'] != null ? FhirBoolean(json['readOnly']) : null,
      readOnlyElement: json['_readOnly'] != null
          ? Element.fromJson(json['_readOnly'] as Map<String, dynamic>)
          : null,
      maxLength:
          json['maxLength'] != null ? FhirInteger(json['maxLength']) : null,
      maxLengthElement: json['_maxLength'] != null
          ? Element.fromJson(json['_maxLength'] as Map<String, dynamic>)
          : null,
      answerValueSet: json['answerValueSet'] != null
          ? FhirCanonical(json['answerValueSet'])
          : null,
      answerValueSetElement: json['_answerValueSet'] != null
          ? Element.fromJson(json['_answerValueSet'] as Map<String, dynamic>)
          : null,
      answerOption: json['answerOption'] != null
          ? (json['answerOption'] as List<dynamic>)
              .map<QuestionnaireAnswerOption>((dynamic v) =>
                  QuestionnaireAnswerOption.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      initial: json['initial'] != null
          ? (json['initial'] as List<dynamic>)
              .map<QuestionnaireInitial>((dynamic v) =>
                  QuestionnaireInitial.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      item: json['item'] != null
          ? (json['item'] as List<dynamic>)
              .map<QuestionnaireItem>((dynamic v) =>
                  QuestionnaireItem.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  QuestionnaireItem clone() => throw UnimplementedError();
  @override
  QuestionnaireItem copyWith({
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
    QuestionnaireItemType? type,
    Element? typeElement,
    List<QuestionnaireEnableWhen>? enableWhen,
    EnableWhenBehavior? enableBehavior,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory QuestionnaireItem.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? QuestionnaireItem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'QuestionnaireItem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory QuestionnaireItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return QuestionnaireItem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

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
    this.answerBoolean,
    this.answerBooleanElement,
    this.answerDecimal,
    this.answerDecimalElement,
    this.answerInteger,
    this.answerIntegerElement,
    this.answerDate,
    this.answerDateElement,
    this.answerDateTime,
    this.answerDateTimeElement,
    this.answerTime,
    this.answerTimeElement,
    this.answerString,
    this.answerStringElement,
    this.answerCoding,
    this.answerQuantity,
    this.answerReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'QuestionnaireEnableWhen';

  @Id()
  int dbId = 0;

  /// [question] /// The linkId for the question whose answer (or lack of answer) governs
  /// whether this item is enabled.
  final FhirString question;
  final Element? questionElement;

  /// [operator_] /// Specifies the criteria by which the question is enabled.
  final QuestionnaireItemOperator operator_;
  final Element? operatorElement;

  /// [answerBoolean] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final FhirBoolean? answerBoolean;
  final Element? answerBooleanElement;

  /// [answerDecimal] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final FhirDecimal? answerDecimal;
  final Element? answerDecimalElement;

  /// [answerInteger] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final FhirInteger? answerInteger;
  final Element? answerIntegerElement;

  /// [answerDate] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final FhirDate? answerDate;
  final Element? answerDateElement;

  /// [answerDateTime] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final FhirDateTime? answerDateTime;
  final Element? answerDateTimeElement;

  /// [answerTime] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final FhirTime? answerTime;
  final Element? answerTimeElement;

  /// [answerString] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final FhirString? answerString;
  final Element? answerStringElement;

  /// [answerCoding] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final Coding? answerCoding;

  /// [answerQuantity] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final Quantity? answerQuantity;

  /// [answerReference] /// A value that the referenced question is tested using the specified operator
  /// in order for the item to be enabled.
  final Reference? answerReference;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    json['question'] = question.value;
    if (questionElement != null) {
      json['_question'] = questionElement!.toJson();
    }
    json['operator'] = operator_.toJson();
    if (answerBoolean?.value != null) {
      json['answerBoolean'] = answerBoolean!.value;
    }
    if (answerBooleanElement != null) {
      json['_answerBoolean'] = answerBooleanElement!.toJson();
    }
    if (answerDecimal?.value != null) {
      json['answerDecimal'] = answerDecimal!.value;
    }
    if (answerDecimalElement != null) {
      json['_answerDecimal'] = answerDecimalElement!.toJson();
    }
    if (answerInteger?.value != null) {
      json['answerInteger'] = answerInteger!.value;
    }
    if (answerIntegerElement != null) {
      json['_answerInteger'] = answerIntegerElement!.toJson();
    }
    if (answerDate?.value != null) {
      json['answerDate'] = answerDate!.value;
    }
    if (answerDateElement != null) {
      json['_answerDate'] = answerDateElement!.toJson();
    }
    if (answerDateTime?.value != null) {
      json['answerDateTime'] = answerDateTime!.value;
    }
    if (answerDateTimeElement != null) {
      json['_answerDateTime'] = answerDateTimeElement!.toJson();
    }
    if (answerTime?.value != null) {
      json['answerTime'] = answerTime!.value;
    }
    if (answerTimeElement != null) {
      json['_answerTime'] = answerTimeElement!.toJson();
    }
    if (answerString?.value != null) {
      json['answerString'] = answerString!.value;
    }
    if (answerStringElement != null) {
      json['_answerString'] = answerStringElement!.toJson();
    }
    if (answerCoding != null) {
      json['answerCoding'] = answerCoding!.toJson();
    }
    if (answerQuantity != null) {
      json['answerQuantity'] = answerQuantity!.toJson();
    }
    if (answerReference != null) {
      json['answerReference'] = answerReference!.toJson();
    }
    return json;
  }

  factory QuestionnaireEnableWhen.fromJson(Map<String, dynamic> json) {
    return QuestionnaireEnableWhen(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      question: FhirString(json['question']),
      questionElement: json['_question'] != null
          ? Element.fromJson(json['_question'] as Map<String, dynamic>)
          : null,
      operator_: QuestionnaireItemOperator.fromJson(
          json['operator'] as Map<String, dynamic>),
      answerBoolean: json['answerBoolean'] != null
          ? FhirBoolean(json['answerBoolean'])
          : null,
      answerBooleanElement: json['_answerBoolean'] != null
          ? Element.fromJson(json['_answerBoolean'] as Map<String, dynamic>)
          : null,
      answerDecimal: json['answerDecimal'] != null
          ? FhirDecimal(json['answerDecimal'])
          : null,
      answerDecimalElement: json['_answerDecimal'] != null
          ? Element.fromJson(json['_answerDecimal'] as Map<String, dynamic>)
          : null,
      answerInteger: json['answerInteger'] != null
          ? FhirInteger(json['answerInteger'])
          : null,
      answerIntegerElement: json['_answerInteger'] != null
          ? Element.fromJson(json['_answerInteger'] as Map<String, dynamic>)
          : null,
      answerDate:
          json['answerDate'] != null ? FhirDate(json['answerDate']) : null,
      answerDateElement: json['_answerDate'] != null
          ? Element.fromJson(json['_answerDate'] as Map<String, dynamic>)
          : null,
      answerDateTime: json['answerDateTime'] != null
          ? FhirDateTime(json['answerDateTime'])
          : null,
      answerDateTimeElement: json['_answerDateTime'] != null
          ? Element.fromJson(json['_answerDateTime'] as Map<String, dynamic>)
          : null,
      answerTime:
          json['answerTime'] != null ? FhirTime(json['answerTime']) : null,
      answerTimeElement: json['_answerTime'] != null
          ? Element.fromJson(json['_answerTime'] as Map<String, dynamic>)
          : null,
      answerString: json['answerString'] != null
          ? FhirString(json['answerString'])
          : null,
      answerStringElement: json['_answerString'] != null
          ? Element.fromJson(json['_answerString'] as Map<String, dynamic>)
          : null,
      answerCoding: json['answerCoding'] != null
          ? Coding.fromJson(json['answerCoding'] as Map<String, dynamic>)
          : null,
      answerQuantity: json['answerQuantity'] != null
          ? Quantity.fromJson(json['answerQuantity'] as Map<String, dynamic>)
          : null,
      answerReference: json['answerReference'] != null
          ? Reference.fromJson(json['answerReference'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  QuestionnaireEnableWhen clone() => throw UnimplementedError();
  @override
  QuestionnaireEnableWhen copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? question,
    Element? questionElement,
    QuestionnaireItemOperator? operator_,
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory QuestionnaireEnableWhen.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireEnableWhen.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? QuestionnaireEnableWhen.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'QuestionnaireEnableWhen cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory QuestionnaireEnableWhen.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return QuestionnaireEnableWhen.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [QuestionnaireAnswerOption] /// One of the permitted answers for a "choice" or "open-choice" question.
class QuestionnaireAnswerOption extends BackboneElement {
  QuestionnaireAnswerOption({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueDate,
    this.valueDateElement,
    this.valueTime,
    this.valueTimeElement,
    this.valueString,
    this.valueStringElement,
    this.valueCoding,
    this.valueReference,
    this.initialSelected,
    this.initialSelectedElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'QuestionnaireAnswerOption';

  @Id()
  int dbId = 0;

  /// [valueInteger] /// A potential answer that's allowed as the answer to this question.
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;

  /// [valueDate] /// A potential answer that's allowed as the answer to this question.
  final FhirDate? valueDate;
  final Element? valueDateElement;

  /// [valueTime] /// A potential answer that's allowed as the answer to this question.
  final FhirTime? valueTime;
  final Element? valueTimeElement;

  /// [valueString] /// A potential answer that's allowed as the answer to this question.
  final FhirString? valueString;
  final Element? valueStringElement;

  /// [valueCoding] /// A potential answer that's allowed as the answer to this question.
  final Coding? valueCoding;

  /// [valueReference] /// A potential answer that's allowed as the answer to this question.
  final Reference? valueReference;

  /// [initialSelected] /// Indicates whether the answer value is selected when the list of possible
  /// answers is initially shown.
  final FhirBoolean? initialSelected;
  final Element? initialSelectedElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.value;
    }
    if (valueIntegerElement != null) {
      json['_valueInteger'] = valueIntegerElement!.toJson();
    }
    if (valueDate?.value != null) {
      json['valueDate'] = valueDate!.value;
    }
    if (valueDateElement != null) {
      json['_valueDate'] = valueDateElement!.toJson();
    }
    if (valueTime?.value != null) {
      json['valueTime'] = valueTime!.value;
    }
    if (valueTimeElement != null) {
      json['_valueTime'] = valueTimeElement!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.value;
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueCoding != null) {
      json['valueCoding'] = valueCoding!.toJson();
    }
    if (valueReference != null) {
      json['valueReference'] = valueReference!.toJson();
    }
    if (initialSelected?.value != null) {
      json['initialSelected'] = initialSelected!.value;
    }
    if (initialSelectedElement != null) {
      json['_initialSelected'] = initialSelectedElement!.toJson();
    }
    return json;
  }

  factory QuestionnaireAnswerOption.fromJson(Map<String, dynamic> json) {
    return QuestionnaireAnswerOption(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger(json['valueInteger'])
          : null,
      valueIntegerElement: json['_valueInteger'] != null
          ? Element.fromJson(json['_valueInteger'] as Map<String, dynamic>)
          : null,
      valueDate: json['valueDate'] != null ? FhirDate(json['valueDate']) : null,
      valueDateElement: json['_valueDate'] != null
          ? Element.fromJson(json['_valueDate'] as Map<String, dynamic>)
          : null,
      valueTime: json['valueTime'] != null ? FhirTime(json['valueTime']) : null,
      valueTimeElement: json['_valueTime'] != null
          ? Element.fromJson(json['_valueTime'] as Map<String, dynamic>)
          : null,
      valueString:
          json['valueString'] != null ? FhirString(json['valueString']) : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(json['_valueString'] as Map<String, dynamic>)
          : null,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(json['valueCoding'] as Map<String, dynamic>)
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(json['valueReference'] as Map<String, dynamic>)
          : null,
      initialSelected: json['initialSelected'] != null
          ? FhirBoolean(json['initialSelected'])
          : null,
      initialSelectedElement: json['_initialSelected'] != null
          ? Element.fromJson(json['_initialSelected'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  QuestionnaireAnswerOption clone() => throw UnimplementedError();
  @override
  QuestionnaireAnswerOption copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory QuestionnaireAnswerOption.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireAnswerOption.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? QuestionnaireAnswerOption.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'QuestionnaireAnswerOption cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory QuestionnaireAnswerOption.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return QuestionnaireAnswerOption.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [QuestionnaireInitial] /// One or more values that should be pre-populated in the answer when
/// initially rendering the questionnaire for user input.
class QuestionnaireInitial extends BackboneElement {
  QuestionnaireInitial({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueDecimal,
    this.valueDecimalElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueDate,
    this.valueDateElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    this.valueTime,
    this.valueTimeElement,
    this.valueString,
    this.valueStringElement,
    this.valueUri,
    this.valueUriElement,
    this.valueAttachment,
    this.valueCoding,
    this.valueQuantity,
    this.valueReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'QuestionnaireInitial';

  @Id()
  int dbId = 0;

  /// [valueBoolean] /// The actual value to for an initial answer.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueDecimal] /// The actual value to for an initial answer.
  final FhirDecimal? valueDecimal;
  final Element? valueDecimalElement;

  /// [valueInteger] /// The actual value to for an initial answer.
  final FhirInteger? valueInteger;
  final Element? valueIntegerElement;

  /// [valueDate] /// The actual value to for an initial answer.
  final FhirDate? valueDate;
  final Element? valueDateElement;

  /// [valueDateTime] /// The actual value to for an initial answer.
  final FhirDateTime? valueDateTime;
  final Element? valueDateTimeElement;

  /// [valueTime] /// The actual value to for an initial answer.
  final FhirTime? valueTime;
  final Element? valueTimeElement;

  /// [valueString] /// The actual value to for an initial answer.
  final FhirString? valueString;
  final Element? valueStringElement;

  /// [valueUri] /// The actual value to for an initial answer.
  final FhirUri? valueUri;
  final Element? valueUriElement;

  /// [valueAttachment] /// The actual value to for an initial answer.
  final Attachment? valueAttachment;

  /// [valueCoding] /// The actual value to for an initial answer.
  final Coding? valueCoding;

  /// [valueQuantity] /// The actual value to for an initial answer.
  final Quantity? valueQuantity;

  /// [valueReference] /// The actual value to for an initial answer.
  final Reference? valueReference;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.value;
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueDecimal?.value != null) {
      json['valueDecimal'] = valueDecimal!.value;
    }
    if (valueDecimalElement != null) {
      json['_valueDecimal'] = valueDecimalElement!.toJson();
    }
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.value;
    }
    if (valueIntegerElement != null) {
      json['_valueInteger'] = valueIntegerElement!.toJson();
    }
    if (valueDate?.value != null) {
      json['valueDate'] = valueDate!.value;
    }
    if (valueDateElement != null) {
      json['_valueDate'] = valueDateElement!.toJson();
    }
    if (valueDateTime?.value != null) {
      json['valueDateTime'] = valueDateTime!.value;
    }
    if (valueDateTimeElement != null) {
      json['_valueDateTime'] = valueDateTimeElement!.toJson();
    }
    if (valueTime?.value != null) {
      json['valueTime'] = valueTime!.value;
    }
    if (valueTimeElement != null) {
      json['_valueTime'] = valueTimeElement!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.value;
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueUri?.value != null) {
      json['valueUri'] = valueUri!.value;
    }
    if (valueUriElement != null) {
      json['_valueUri'] = valueUriElement!.toJson();
    }
    if (valueAttachment != null) {
      json['valueAttachment'] = valueAttachment!.toJson();
    }
    if (valueCoding != null) {
      json['valueCoding'] = valueCoding!.toJson();
    }
    if (valueQuantity != null) {
      json['valueQuantity'] = valueQuantity!.toJson();
    }
    if (valueReference != null) {
      json['valueReference'] = valueReference!.toJson();
    }
    return json;
  }

  factory QuestionnaireInitial.fromJson(Map<String, dynamic> json) {
    return QuestionnaireInitial(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>)
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal(json['valueDecimal'])
          : null,
      valueDecimalElement: json['_valueDecimal'] != null
          ? Element.fromJson(json['_valueDecimal'] as Map<String, dynamic>)
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger(json['valueInteger'])
          : null,
      valueIntegerElement: json['_valueInteger'] != null
          ? Element.fromJson(json['_valueInteger'] as Map<String, dynamic>)
          : null,
      valueDate: json['valueDate'] != null ? FhirDate(json['valueDate']) : null,
      valueDateElement: json['_valueDate'] != null
          ? Element.fromJson(json['_valueDate'] as Map<String, dynamic>)
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime(json['valueDateTime'])
          : null,
      valueDateTimeElement: json['_valueDateTime'] != null
          ? Element.fromJson(json['_valueDateTime'] as Map<String, dynamic>)
          : null,
      valueTime: json['valueTime'] != null ? FhirTime(json['valueTime']) : null,
      valueTimeElement: json['_valueTime'] != null
          ? Element.fromJson(json['_valueTime'] as Map<String, dynamic>)
          : null,
      valueString:
          json['valueString'] != null ? FhirString(json['valueString']) : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(json['_valueString'] as Map<String, dynamic>)
          : null,
      valueUri: json['valueUri'] != null ? FhirUri(json['valueUri']) : null,
      valueUriElement: json['_valueUri'] != null
          ? Element.fromJson(json['_valueUri'] as Map<String, dynamic>)
          : null,
      valueAttachment: json['valueAttachment'] != null
          ? Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>)
          : null,
      valueCoding: json['valueCoding'] != null
          ? Coding.fromJson(json['valueCoding'] as Map<String, dynamic>)
          : null,
      valueQuantity: json['valueQuantity'] != null
          ? Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>)
          : null,
      valueReference: json['valueReference'] != null
          ? Reference.fromJson(json['valueReference'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  QuestionnaireInitial clone() => throw UnimplementedError();
  @override
  QuestionnaireInitial copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory QuestionnaireInitial.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireInitial.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? QuestionnaireInitial.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'QuestionnaireInitial cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory QuestionnaireInitial.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return QuestionnaireInitial.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
