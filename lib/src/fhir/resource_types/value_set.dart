import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ValueSet] /// A ValueSet resource instance specifies a set of codes drawn from one or
/// more code systems, intended for use in a particular context. Value sets
/// link between [CodeSystem](codesystem.html) definitions and their use in
/// [coded elements](terminologies.html).
@JsonSerializable()
class ValueSet extends DomainResource {
  ValueSet({
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
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.immutable,
    this.immutableElement,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.compose,
    this.expansion,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.ValueSet);
  @override
  String get fhirType => 'ValueSet';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this value set when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this value
  /// set is (or will be) published. This URL can be the target of a canonical
  /// reference. It SHALL remain the same when the value set is stored on
  /// different servers.
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this value set when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the value set when
  /// it is referenced in a specification, model, design or instance. This is an
  /// arbitrary value managed by the value set author and is not expected to be
  /// globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a
  /// managed version is not available. There is also no expectation that
  /// versions can be placed in a lexicographical sequence.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [name] /// A natural language name identifying the value set. This name should be
  /// usable as an identifier for the module by machine processing applications
  /// such as code generation.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the value set.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [status] /// The status of this value set. Enables tracking the life-cycle of the
  /// content. The status of the value set applies to the value set definition
  /// (ValueSet.compose) and the associated ValueSet metadata. Expansions do not
  /// have a state.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this value set is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the value set was created or revised
  /// (e.g. the 'content logical definition').
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the value set.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the value set from a consumer's
  /// perspective. The textual description specifies the span of meanings for
  /// concepts to be included within the Value Set Expansion, and also may
  /// specify the intended use and limitations of the Value Set.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate value set instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the value set is intended to be used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [immutable] /// If this is set to 'true', then no new versions of the content logical
  /// definition can be created. Note: Other metadata might still change.
  @JsonKey(name: 'immutable')
  final FhirBoolean? immutable;
  @JsonKey(name: '_immutable')
  final Element? immutableElement;

  /// [purpose] /// Explanation of why this value set is needed and why it has been designed as
  /// it has.
  @JsonKey(name: 'purpose')
  final FhirMarkdown? purpose;
  @JsonKey(name: '_purpose')
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the value set and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the value set.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;

  /// [compose] /// A set of criteria that define the contents of the value set by including or
  /// excluding codes selected from the specified code system(s) that the value
  /// set draws from. This is also known as the Content Logical Definition (CLD).
  @JsonKey(name: 'compose')
  final ValueSetCompose? compose;

  /// [expansion] /// A value set can also be "expanded", where the value set is turned into a
  /// simple collection of enumerated codes. This element holds the expansion, if
  /// it has been performed.
  @JsonKey(name: 'expansion')
  final ValueSetExpansion? expansion;
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
    json['status'] = status.toJson();
    if (experimental?.value != null) {
      json['experimental'] = experimental!.value;
    }
    if (experimentalElement != null) {
      json['_experimental'] = experimentalElement!.toJson();
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
    if (immutable?.value != null) {
      json['immutable'] = immutable!.value;
    }
    if (immutableElement != null) {
      json['_immutable'] = immutableElement!.toJson();
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
    if (compose != null) {
      json['compose'] = compose!.toJson();
    }
    if (expansion != null) {
      json['expansion'] = expansion!.toJson();
    }
    return json;
  }

  factory ValueSet.fromJson(Map<String, dynamic> json) {
    return ValueSet(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
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
      status:
          PublicationStatus.fromJson(json['status'] as Map<String, dynamic>),
      experimental: json['experimental'] != null
          ? FhirBoolean(json['experimental'])
          : null,
      experimentalElement: json['_experimental'] != null
          ? Element.fromJson(json['_experimental'] as Map<String, dynamic>)
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
      immutable:
          json['immutable'] != null ? FhirBoolean(json['immutable']) : null,
      immutableElement: json['_immutable'] != null
          ? Element.fromJson(json['_immutable'] as Map<String, dynamic>)
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
      compose: json['compose'] != null
          ? ValueSetCompose.fromJson(json['compose'] as Map<String, dynamic>)
          : null,
      expansion: json['expansion'] != null
          ? ValueSetExpansion.fromJson(
              json['expansion'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ValueSet clone() => throw UnimplementedError();
  @override
  ValueSet copyWith({
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
    PublicationStatus? status,
    Element? statusElement,
    FhirBoolean? experimental,
    Element? experimentalElement,
    FhirDateTime? date,
    Element? dateElement,
    FhirString? publisher,
    Element? publisherElement,
    List<ContactDetail>? contact,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<UsageContext>? useContext,
    List<CodeableConcept>? jurisdiction,
    FhirBoolean? immutable,
    Element? immutableElement,
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    ValueSetCompose? compose,
    ValueSetExpansion? expansion,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSet(
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
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      experimental: experimental ?? this.experimental,
      experimentalElement: experimentalElement ?? this.experimentalElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      publisher: publisher ?? this.publisher,
      publisherElement: publisherElement ?? this.publisherElement,
      contact: contact ?? this.contact,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      useContext: useContext ?? this.useContext,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      immutable: immutable ?? this.immutable,
      immutableElement: immutableElement ?? this.immutableElement,
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      compose: compose ?? this.compose,
      expansion: expansion ?? this.expansion,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ValueSet.fromYaml(dynamic yaml) => yaml is String
      ? ValueSet.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ValueSet.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ValueSet cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ValueSet.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSet.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ValueSetCompose] /// A set of criteria that define the contents of the value set by including or
/// excluding codes selected from the specified code system(s) that the value
/// set draws from. This is also known as the Content Logical Definition (CLD).
@JsonSerializable()
class ValueSetCompose extends BackboneElement {
  ValueSetCompose({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.lockedDate,
    this.lockedDateElement,
    this.inactive,
    this.inactiveElement,
    required this.include,
    this.exclude,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ValueSetCompose';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [lockedDate] /// The Locked Date is the effective date that is used to determine the version
  /// of all referenced Code Systems and Value Set Definitions included in the
  /// compose that are not already tied to a specific version.
  @JsonKey(name: 'lockedDate')
  final FhirDate? lockedDate;
  @JsonKey(name: '_lockedDate')
  final Element? lockedDateElement;

  /// [inactive] /// Whether inactive codes - codes that are not approved for current use - are
  /// in the value set. If inactive = true, inactive codes are to be included in
  /// the expansion, if inactive = false, the inactive codes will not be included
  /// in the expansion. If absent, the behavior is determined by the
  /// implementation, or by the applicable $expand parameters (but generally,
  /// inactive codes would be expected to be included).
  @JsonKey(name: 'inactive')
  final FhirBoolean? inactive;
  @JsonKey(name: '_inactive')
  final Element? inactiveElement;

  /// [include] /// Include one or more codes from a code system or other value set(s).
  @JsonKey(name: 'include')
  final List<ValueSetInclude> include;

  /// [exclude] /// Exclude one or more codes from the value set based on code system filters
  /// and/or other value sets.
  @JsonKey(name: 'exclude')
  final List<ValueSetInclude>? exclude;
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
    if (lockedDate?.value != null) {
      json['lockedDate'] = lockedDate!.value;
    }
    if (lockedDateElement != null) {
      json['_lockedDate'] = lockedDateElement!.toJson();
    }
    if (inactive?.value != null) {
      json['inactive'] = inactive!.value;
    }
    if (inactiveElement != null) {
      json['_inactive'] = inactiveElement!.toJson();
    }
    json['include'] =
        include.map<dynamic>((ValueSetInclude v) => v.toJson()).toList();
    if (exclude != null && exclude!.isNotEmpty) {
      json['exclude'] =
          exclude!.map<dynamic>((ValueSetInclude v) => v.toJson()).toList();
    }
    return json;
  }

  factory ValueSetCompose.fromJson(Map<String, dynamic> json) {
    return ValueSetCompose(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      lockedDate:
          json['lockedDate'] != null ? FhirDate(json['lockedDate']) : null,
      lockedDateElement: json['_lockedDate'] != null
          ? Element.fromJson(json['_lockedDate'] as Map<String, dynamic>)
          : null,
      inactive: json['inactive'] != null ? FhirBoolean(json['inactive']) : null,
      inactiveElement: json['_inactive'] != null
          ? Element.fromJson(json['_inactive'] as Map<String, dynamic>)
          : null,
      include: (json['include'] as List<dynamic>)
          .map<ValueSetInclude>((dynamic v) =>
              ValueSetInclude.fromJson(v as Map<String, dynamic>))
          .toList(),
      exclude: json['exclude'] != null
          ? (json['exclude'] as List<dynamic>)
              .map<ValueSetInclude>((dynamic v) =>
                  ValueSetInclude.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ValueSetCompose clone() => throw UnimplementedError();
  @override
  ValueSetCompose copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirDate? lockedDate,
    Element? lockedDateElement,
    FhirBoolean? inactive,
    Element? inactiveElement,
    List<ValueSetInclude>? include,
    List<ValueSetInclude>? exclude,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetCompose(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      lockedDate: lockedDate ?? this.lockedDate,
      lockedDateElement: lockedDateElement ?? this.lockedDateElement,
      inactive: inactive ?? this.inactive,
      inactiveElement: inactiveElement ?? this.inactiveElement,
      include: include ?? this.include,
      exclude: exclude ?? this.exclude,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ValueSetCompose.fromYaml(dynamic yaml) => yaml is String
      ? ValueSetCompose.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ValueSetCompose.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ValueSetCompose cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ValueSetCompose.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetCompose.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ValueSetInclude] /// Include one or more codes from a code system or other value set(s).
@JsonSerializable()
class ValueSetInclude extends BackboneElement {
  ValueSetInclude({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.systemElement,
    this.version,
    this.versionElement,
    this.concept,
    this.filter,
    this.valueSet,
    this.valueSetElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ValueSetInclude';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [system] /// An absolute URI which is the code system from which the selected codes come
  /// from.
  @JsonKey(name: 'system')
  final FhirUri? system;
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [version] /// The version of the code system that the codes are selected from, or the
  /// special version '*' for all versions.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [concept] /// Specifies a concept to be included or excluded.
  @JsonKey(name: 'concept')
  final List<ValueSetConcept>? concept;

  /// [filter] /// Select concepts by specify a matching criterion based on the properties
  /// (including relationships) defined by the system, or on filters defined by
  /// the system. If multiple filters are specified, they SHALL all be true.
  @JsonKey(name: 'filter')
  final List<ValueSetFilter>? filter;

  /// [valueSet] /// Selects the concepts found in this value set (based on its value set
  /// definition). This is an absolute URI that is a reference to ValueSet.url.
  /// If multiple value sets are specified this includes the union of the
  /// contents of all of the referenced value sets.
  @JsonKey(name: 'valueSet')
  final List<FhirCanonical>? valueSet;
  @JsonKey(name: '_valueSet')
  final List<Element>? valueSetElement;
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
    if (system?.value != null) {
      json['system'] = system!.value;
    }
    if (systemElement != null) {
      json['_system'] = systemElement!.toJson();
    }
    if (version?.value != null) {
      json['version'] = version!.value;
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    if (concept != null && concept!.isNotEmpty) {
      json['concept'] =
          concept!.map<dynamic>((ValueSetConcept v) => v.toJson()).toList();
    }
    if (filter != null && filter!.isNotEmpty) {
      json['filter'] =
          filter!.map<dynamic>((ValueSetFilter v) => v.toJson()).toList();
    }
    if (valueSet != null && valueSet!.isNotEmpty) {
      json['valueSet'] = valueSet!.map((FhirCanonical v) => v.value).toList();
    }
    if (valueSetElement != null && valueSetElement!.isNotEmpty) {
      json['_valueSet'] =
          valueSetElement!.map((Element v) => v.toJson()).toList();
    }
    return json;
  }

  factory ValueSetInclude.fromJson(Map<String, dynamic> json) {
    return ValueSetInclude(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      system: json['system'] != null ? FhirUri(json['system']) : null,
      systemElement: json['_system'] != null
          ? Element.fromJson(json['_system'] as Map<String, dynamic>)
          : null,
      version: json['version'] != null ? FhirString(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
      concept: json['concept'] != null
          ? (json['concept'] as List<dynamic>)
              .map<ValueSetConcept>((dynamic v) =>
                  ValueSetConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      filter: json['filter'] != null
          ? (json['filter'] as List<dynamic>)
              .map<ValueSetFilter>((dynamic v) =>
                  ValueSetFilter.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      valueSet: json['valueSet'] != null
          ? (json['valueSet'] as List<dynamic>)
              .map<FhirCanonical>((dynamic v) => FhirCanonical(v))
              .toList()
          : null,
      valueSetElement: json['_valueSet'] != null
          ? (json['_valueSet'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ValueSetInclude clone() => throw UnimplementedError();
  @override
  ValueSetInclude copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? system,
    Element? systemElement,
    FhirString? version,
    Element? versionElement,
    List<ValueSetConcept>? concept,
    List<ValueSetFilter>? filter,
    List<FhirCanonical>? valueSet,
    List<Element>? valueSetElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetInclude(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      concept: concept ?? this.concept,
      filter: filter ?? this.filter,
      valueSet: valueSet ?? this.valueSet,
      valueSetElement: valueSetElement ?? this.valueSetElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ValueSetInclude.fromYaml(dynamic yaml) => yaml is String
      ? ValueSetInclude.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ValueSetInclude.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ValueSetInclude cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ValueSetInclude.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetInclude.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ValueSetConcept] /// Specifies a concept to be included or excluded.
@JsonSerializable()
class ValueSetConcept extends BackboneElement {
  ValueSetConcept({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.designation,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ValueSetConcept';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// Specifies a code for the concept to be included or excluded.
  @JsonKey(name: 'code')
  final FhirCode code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [display] /// The text to display to the user for this concept in the context of this
  /// valueset. If no display is provided, then applications using the value set
  /// use the display specified for the code by the system.
  @JsonKey(name: 'display')
  final FhirString? display;
  @JsonKey(name: '_display')
  final Element? displayElement;

  /// [designation] /// Additional representations for this concept when used in this value set -
  /// other languages, aliases, specialized purposes, used for particular
  /// purposes, etc.
  @JsonKey(name: 'designation')
  final List<ValueSetDesignation>? designation;
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
    json['code'] = code.value;
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    if (display?.value != null) {
      json['display'] = display!.value;
    }
    if (displayElement != null) {
      json['_display'] = displayElement!.toJson();
    }
    if (designation != null && designation!.isNotEmpty) {
      json['designation'] = designation!
          .map<dynamic>((ValueSetDesignation v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory ValueSetConcept.fromJson(Map<String, dynamic> json) {
    return ValueSetConcept(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      code: FhirCode(json['code']),
      codeElement: Element.fromJson(json['_code'] as Map<String, dynamic>),
      display: json['display'] != null ? FhirString(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(json['_display'] as Map<String, dynamic>)
          : null,
      designation: json['designation'] != null
          ? (json['designation'] as List<dynamic>)
              .map<ValueSetDesignation>((dynamic v) =>
                  ValueSetDesignation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ValueSetConcept clone() => throw UnimplementedError();
  @override
  ValueSetConcept copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirString? display,
    Element? displayElement,
    List<ValueSetDesignation>? designation,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetConcept(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      designation: designation ?? this.designation,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ValueSetConcept.fromYaml(dynamic yaml) => yaml is String
      ? ValueSetConcept.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ValueSetConcept.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ValueSetConcept cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ValueSetConcept.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetConcept.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ValueSetDesignation] /// Additional representations for this concept when used in this value set -
/// other languages, aliases, specialized purposes, used for particular
/// purposes, etc.
@JsonSerializable()
class ValueSetDesignation extends BackboneElement {
  ValueSetDesignation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.language,
    this.languageElement,
    this.use,
    required this.value,
    this.valueElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ValueSetDesignation';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [language] /// The language this designation is defined for.
  @JsonKey(name: 'language')
  final CommonLanguages? language;
  @JsonKey(name: '_language')
  final Element? languageElement;

  /// [use] /// A code that represents types of uses of designations.
  @JsonKey(name: 'use')
  final Coding? use;

  /// [value] /// The text value for this designation.
  @JsonKey(name: 'value')
  final FhirString value;
  @JsonKey(name: '_value')
  final Element? valueElement;
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
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (use != null) {
      json['use'] = use!.toJson();
    }
    json['value'] = value.value;
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    return json;
  }

  factory ValueSetDesignation.fromJson(Map<String, dynamic> json) {
    return ValueSetDesignation(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      use: json['use'] != null
          ? Coding.fromJson(json['use'] as Map<String, dynamic>)
          : null,
      value: FhirString(json['value']),
      valueElement: Element.fromJson(json['_value'] as Map<String, dynamic>),
    );
  }
  @override
  ValueSetDesignation clone() => throw UnimplementedError();
  @override
  ValueSetDesignation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CommonLanguages? language,
    Element? languageElement,
    Coding? use,
    FhirString? value,
    Element? valueElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetDesignation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      use: use ?? this.use,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ValueSetDesignation.fromYaml(dynamic yaml) => yaml is String
      ? ValueSetDesignation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ValueSetDesignation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ValueSetDesignation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ValueSetDesignation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetDesignation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ValueSetFilter] /// Select concepts by specify a matching criterion based on the properties
/// (including relationships) defined by the system, or on filters defined by
/// the system. If multiple filters are specified, they SHALL all be true.
@JsonSerializable()
class ValueSetFilter extends BackboneElement {
  ValueSetFilter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.property,
    this.propertyElement,
    required this.op,
    this.opElement,
    required this.value,
    this.valueElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ValueSetFilter';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [property] /// A code that identifies a property or a filter defined in the code system.
  @JsonKey(name: 'property')
  final FhirCode property;
  @JsonKey(name: '_property')
  final Element? propertyElement;

  /// [op] /// The kind of operation to perform as a part of the filter criteria.
  @JsonKey(name: 'op')
  final FilterOperator op;
  @JsonKey(name: '_op')
  final Element? opElement;

  /// [value] /// The match value may be either a code defined by the system, or a string
  /// value, which is a regex match on the literal string of the property value
  /// (if the filter represents a property defined in CodeSystem) or of the
  /// system filter value (if the filter represents a filter defined in
  /// CodeSystem) when the operation is 'regex', or one of the values (true and
  /// false), when the operation is 'exists'.
  @JsonKey(name: 'value')
  final FhirString value;
  @JsonKey(name: '_value')
  final Element? valueElement;
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
    json['property'] = property.value;
    if (propertyElement != null) {
      json['_property'] = propertyElement!.toJson();
    }
    json['op'] = op.toJson();
    json['value'] = value.value;
    if (valueElement != null) {
      json['_value'] = valueElement!.toJson();
    }
    return json;
  }

  factory ValueSetFilter.fromJson(Map<String, dynamic> json) {
    return ValueSetFilter(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      property: FhirCode(json['property']),
      propertyElement:
          Element.fromJson(json['_property'] as Map<String, dynamic>),
      op: FilterOperator.fromJson(json['op'] as Map<String, dynamic>),
      value: FhirString(json['value']),
      valueElement: Element.fromJson(json['_value'] as Map<String, dynamic>),
    );
  }
  @override
  ValueSetFilter clone() => throw UnimplementedError();
  @override
  ValueSetFilter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? property,
    Element? propertyElement,
    FilterOperator? op,
    Element? opElement,
    FhirString? value,
    Element? valueElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      property: property ?? this.property,
      propertyElement: propertyElement ?? this.propertyElement,
      op: op ?? this.op,
      opElement: opElement ?? this.opElement,
      value: value ?? this.value,
      valueElement: valueElement ?? this.valueElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ValueSetFilter.fromYaml(dynamic yaml) => yaml is String
      ? ValueSetFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ValueSetFilter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ValueSetFilter cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ValueSetFilter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetFilter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ValueSetExpansion] /// A value set can also be "expanded", where the value set is turned into a
/// simple collection of enumerated codes. This element holds the expansion, if
/// it has been performed.
@JsonSerializable()
class ValueSetExpansion extends BackboneElement {
  ValueSetExpansion({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.identifierElement,
    required this.timestamp,
    this.timestampElement,
    this.total,
    this.totalElement,
    this.offset,
    this.offsetElement,
    this.parameter,
    this.contains,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ValueSetExpansion';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// An identifier that uniquely identifies this expansion of the valueset,
  /// based on a unique combination of the provided parameters, the system
  /// default parameters, and the underlying system code system versions etc.
  /// Systems may re-use the same identifier as long as those factors remain the
  /// same, and the expansion is the same, but are not required to do so. This is
  /// a business identifier.
  @JsonKey(name: 'identifier')
  final FhirUri? identifier;
  @JsonKey(name: '_identifier')
  final Element? identifierElement;

  /// [timestamp] /// The time at which the expansion was produced by the expanding system.
  @JsonKey(name: 'timestamp')
  final FhirDateTime timestamp;
  @JsonKey(name: '_timestamp')
  final Element? timestampElement;

  /// [total] /// The total number of concepts in the expansion. If the number of concept
  /// nodes in this resource is less than the stated number, then the server can
  /// return more using the offset parameter.
  @JsonKey(name: 'total')
  final FhirInteger? total;
  @JsonKey(name: '_total')
  final Element? totalElement;

  /// [offset] /// If paging is being used, the offset at which this resource starts. I.e.
  /// this resource is a partial view into the expansion. If paging is not being
  /// used, this element SHALL NOT be present.
  @JsonKey(name: 'offset')
  final FhirInteger? offset;
  @JsonKey(name: '_offset')
  final Element? offsetElement;

  /// [parameter] /// A parameter that controlled the expansion process. These parameters may be
  /// used by users of expanded value sets to check whether the expansion is
  /// suitable for a particular purpose, or to pick the correct expansion.
  @JsonKey(name: 'parameter')
  final List<ValueSetParameter>? parameter;

  /// [contains] /// The codes that are contained in the value set expansion.
  @JsonKey(name: 'contains')
  final List<ValueSetContains>? contains;
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
    if (identifier?.value != null) {
      json['identifier'] = identifier!.value;
    }
    if (identifierElement != null) {
      json['_identifier'] = identifierElement!.toJson();
    }
    json['timestamp'] = timestamp.value;
    if (timestampElement != null) {
      json['_timestamp'] = timestampElement!.toJson();
    }
    if (total?.value != null) {
      json['total'] = total!.value;
    }
    if (totalElement != null) {
      json['_total'] = totalElement!.toJson();
    }
    if (offset?.value != null) {
      json['offset'] = offset!.value;
    }
    if (offsetElement != null) {
      json['_offset'] = offsetElement!.toJson();
    }
    if (parameter != null && parameter!.isNotEmpty) {
      json['parameter'] =
          parameter!.map<dynamic>((ValueSetParameter v) => v.toJson()).toList();
    }
    if (contains != null && contains!.isNotEmpty) {
      json['contains'] =
          contains!.map<dynamic>((ValueSetContains v) => v.toJson()).toList();
    }
    return json;
  }

  factory ValueSetExpansion.fromJson(Map<String, dynamic> json) {
    return ValueSetExpansion(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      identifier:
          json['identifier'] != null ? FhirUri(json['identifier']) : null,
      identifierElement: json['_identifier'] != null
          ? Element.fromJson(json['_identifier'] as Map<String, dynamic>)
          : null,
      timestamp: FhirDateTime(json['timestamp']),
      timestampElement:
          Element.fromJson(json['_timestamp'] as Map<String, dynamic>),
      total: json['total'] != null ? FhirInteger(json['total']) : null,
      totalElement: json['_total'] != null
          ? Element.fromJson(json['_total'] as Map<String, dynamic>)
          : null,
      offset: json['offset'] != null ? FhirInteger(json['offset']) : null,
      offsetElement: json['_offset'] != null
          ? Element.fromJson(json['_offset'] as Map<String, dynamic>)
          : null,
      parameter: json['parameter'] != null
          ? (json['parameter'] as List<dynamic>)
              .map<ValueSetParameter>((dynamic v) =>
                  ValueSetParameter.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      contains: json['contains'] != null
          ? (json['contains'] as List<dynamic>)
              .map<ValueSetContains>((dynamic v) =>
                  ValueSetContains.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ValueSetExpansion clone() => throw UnimplementedError();
  @override
  ValueSetExpansion copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? identifier,
    Element? identifierElement,
    FhirDateTime? timestamp,
    Element? timestampElement,
    FhirInteger? total,
    Element? totalElement,
    FhirInteger? offset,
    Element? offsetElement,
    List<ValueSetParameter>? parameter,
    List<ValueSetContains>? contains,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetExpansion(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      identifierElement: identifierElement ?? this.identifierElement,
      timestamp: timestamp ?? this.timestamp,
      timestampElement: timestampElement ?? this.timestampElement,
      total: total ?? this.total,
      totalElement: totalElement ?? this.totalElement,
      offset: offset ?? this.offset,
      offsetElement: offsetElement ?? this.offsetElement,
      parameter: parameter ?? this.parameter,
      contains: contains ?? this.contains,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ValueSetExpansion.fromYaml(dynamic yaml) => yaml is String
      ? ValueSetExpansion.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ValueSetExpansion.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ValueSetExpansion cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ValueSetExpansion.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetExpansion.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ValueSetParameter] /// A parameter that controlled the expansion process. These parameters may be
/// used by users of expanded value sets to check whether the expansion is
/// suitable for a particular purpose, or to pick the correct expansion.
@JsonSerializable()
class ValueSetParameter extends BackboneElement {
  ValueSetParameter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.valueString,
    this.valueStringElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueDecimal,
    this.valueDecimalElement,
    this.valueUri,
    this.valueUriElement,
    this.valueCode,
    this.valueCodeElement,
    this.valueDateTime,
    this.valueDateTimeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ValueSetParameter';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// Name of the input parameter to the $expand operation; may be a
  /// server-assigned name for additional default or other server-supplied
  /// parameters used to control the expansion process.
  @JsonKey(name: 'name')
  final FhirString name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [valueString] /// The value of the parameter.
  @JsonKey(name: 'valueString')
  final FhirString? valueString;
  @JsonKey(name: '_valueString')
  final Element? valueStringElement;

  /// [valueBoolean] /// The value of the parameter.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean? valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueInteger] /// The value of the parameter.
  @JsonKey(name: 'valueInteger')
  final FhirInteger? valueInteger;
  @JsonKey(name: '_valueInteger')
  final Element? valueIntegerElement;

  /// [valueDecimal] /// The value of the parameter.
  @JsonKey(name: 'valueDecimal')
  final FhirDecimal? valueDecimal;
  @JsonKey(name: '_valueDecimal')
  final Element? valueDecimalElement;

  /// [valueUri] /// The value of the parameter.
  @JsonKey(name: 'valueUri')
  final FhirUri? valueUri;
  @JsonKey(name: '_valueUri')
  final Element? valueUriElement;

  /// [valueCode] /// The value of the parameter.
  @JsonKey(name: 'valueCode')
  final FhirCode? valueCode;
  @JsonKey(name: '_valueCode')
  final Element? valueCodeElement;

  /// [valueDateTime] /// The value of the parameter.
  @JsonKey(name: 'valueDateTime')
  final FhirDateTime? valueDateTime;
  @JsonKey(name: '_valueDateTime')
  final Element? valueDateTimeElement;
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
    json['name'] = name.value;
    if (nameElement != null) {
      json['_name'] = nameElement!.toJson();
    }
    if (valueString?.value != null) {
      json['valueString'] = valueString!.value;
    }
    if (valueStringElement != null) {
      json['_valueString'] = valueStringElement!.toJson();
    }
    if (valueBoolean?.value != null) {
      json['valueBoolean'] = valueBoolean!.value;
    }
    if (valueBooleanElement != null) {
      json['_valueBoolean'] = valueBooleanElement!.toJson();
    }
    if (valueInteger?.value != null) {
      json['valueInteger'] = valueInteger!.value;
    }
    if (valueIntegerElement != null) {
      json['_valueInteger'] = valueIntegerElement!.toJson();
    }
    if (valueDecimal?.value != null) {
      json['valueDecimal'] = valueDecimal!.value;
    }
    if (valueDecimalElement != null) {
      json['_valueDecimal'] = valueDecimalElement!.toJson();
    }
    if (valueUri?.value != null) {
      json['valueUri'] = valueUri!.value;
    }
    if (valueUriElement != null) {
      json['_valueUri'] = valueUriElement!.toJson();
    }
    if (valueCode?.value != null) {
      json['valueCode'] = valueCode!.value;
    }
    if (valueCodeElement != null) {
      json['_valueCode'] = valueCodeElement!.toJson();
    }
    if (valueDateTime?.value != null) {
      json['valueDateTime'] = valueDateTime!.value;
    }
    if (valueDateTimeElement != null) {
      json['_valueDateTime'] = valueDateTimeElement!.toJson();
    }
    return json;
  }

  factory ValueSetParameter.fromJson(Map<String, dynamic> json) {
    return ValueSetParameter(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      name: FhirString(json['name']),
      nameElement: Element.fromJson(json['_name'] as Map<String, dynamic>),
      valueString:
          json['valueString'] != null ? FhirString(json['valueString']) : null,
      valueStringElement: json['_valueString'] != null
          ? Element.fromJson(json['_valueString'] as Map<String, dynamic>)
          : null,
      valueBoolean: json['valueBoolean'] != null
          ? FhirBoolean(json['valueBoolean'])
          : null,
      valueBooleanElement: json['_valueBoolean'] != null
          ? Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>)
          : null,
      valueInteger: json['valueInteger'] != null
          ? FhirInteger(json['valueInteger'])
          : null,
      valueIntegerElement: json['_valueInteger'] != null
          ? Element.fromJson(json['_valueInteger'] as Map<String, dynamic>)
          : null,
      valueDecimal: json['valueDecimal'] != null
          ? FhirDecimal(json['valueDecimal'])
          : null,
      valueDecimalElement: json['_valueDecimal'] != null
          ? Element.fromJson(json['_valueDecimal'] as Map<String, dynamic>)
          : null,
      valueUri: json['valueUri'] != null ? FhirUri(json['valueUri']) : null,
      valueUriElement: json['_valueUri'] != null
          ? Element.fromJson(json['_valueUri'] as Map<String, dynamic>)
          : null,
      valueCode: json['valueCode'] != null ? FhirCode(json['valueCode']) : null,
      valueCodeElement: json['_valueCode'] != null
          ? Element.fromJson(json['_valueCode'] as Map<String, dynamic>)
          : null,
      valueDateTime: json['valueDateTime'] != null
          ? FhirDateTime(json['valueDateTime'])
          : null,
      valueDateTimeElement: json['_valueDateTime'] != null
          ? Element.fromJson(json['_valueDateTime'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  ValueSetParameter clone() => throw UnimplementedError();
  @override
  ValueSetParameter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    FhirString? valueString,
    Element? valueStringElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirDecimal? valueDecimal,
    Element? valueDecimalElement,
    FhirUri? valueUri,
    Element? valueUriElement,
    FhirCode? valueCode,
    Element? valueCodeElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetParameter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDecimalElement: valueDecimalElement ?? this.valueDecimalElement,
      valueUri: valueUri ?? this.valueUri,
      valueUriElement: valueUriElement ?? this.valueUriElement,
      valueCode: valueCode ?? this.valueCode,
      valueCodeElement: valueCodeElement ?? this.valueCodeElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ValueSetParameter.fromYaml(dynamic yaml) => yaml is String
      ? ValueSetParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ValueSetParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ValueSetParameter cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ValueSetParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetParameter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ValueSetContains] /// The codes that are contained in the value set expansion.
@JsonSerializable()
class ValueSetContains extends BackboneElement {
  ValueSetContains({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.system,
    this.systemElement,
    this.abstract_,
    this.abstractElement,
    this.inactive,
    this.inactiveElement,
    this.version,
    this.versionElement,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.designation,
    this.contains,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'ValueSetContains';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [system] /// An absolute URI which is the code system in which the code for this item in
  /// the expansion is defined.
  @JsonKey(name: 'system')
  final FhirUri? system;
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [abstract_] /// If true, this entry is included in the expansion for navigational purposes,
  /// and the user cannot select the code directly as a proper value.
  @JsonKey(name: 'abstract')
  final FhirBoolean? abstract_;
  @JsonKey(name: '_abstract')
  final Element? abstractElement;

  /// [inactive] /// If the concept is inactive in the code system that defines it. Inactive
  /// codes are those that are no longer to be used, but are maintained by the
  /// code system for understanding legacy data. It might not be known or
  /// specified whether an concept is inactive (and it may depend on the context
  /// of use).
  @JsonKey(name: 'inactive')
  final FhirBoolean? inactive;
  @JsonKey(name: '_inactive')
  final Element? inactiveElement;

  /// [version] /// The version of the code system from this code was taken. Note that a
  /// well-maintained code system does not need the version reported, because the
  /// meaning of codes is consistent across versions. However this cannot
  /// consistently be assured, and when the meaning is not guaranteed to be
  /// consistent, the version SHOULD be exchanged.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [code] /// The code for this item in the expansion hierarchy. If this code is missing
  /// the entry in the hierarchy is a place holder (abstract) and does not
  /// represent a valid code in the value set.
  @JsonKey(name: 'code')
  final FhirCode? code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [display] /// The recommended display for this item in the expansion.
  @JsonKey(name: 'display')
  final FhirString? display;
  @JsonKey(name: '_display')
  final Element? displayElement;

  /// [designation] /// Additional representations for this item - other languages, aliases,
  /// specialized purposes, used for particular purposes, etc. These are relevant
  /// when the conditions of the expansion do not fix to a single correct
  /// representation.
  @JsonKey(name: 'designation')
  final List<ValueSetDesignation>? designation;

  /// [contains] /// Other codes and entries contained under this entry in the hierarchy.
  @JsonKey(name: 'contains')
  final List<ValueSetContains>? contains;
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
    if (system?.value != null) {
      json['system'] = system!.value;
    }
    if (systemElement != null) {
      json['_system'] = systemElement!.toJson();
    }
    if (abstract_?.value != null) {
      json['abstract'] = abstract_!.value;
    }
    if (abstractElement != null) {
      json['_abstract'] = abstractElement!.toJson();
    }
    if (inactive?.value != null) {
      json['inactive'] = inactive!.value;
    }
    if (inactiveElement != null) {
      json['_inactive'] = inactiveElement!.toJson();
    }
    if (version?.value != null) {
      json['version'] = version!.value;
    }
    if (versionElement != null) {
      json['_version'] = versionElement!.toJson();
    }
    if (code?.value != null) {
      json['code'] = code!.value;
    }
    if (codeElement != null) {
      json['_code'] = codeElement!.toJson();
    }
    if (display?.value != null) {
      json['display'] = display!.value;
    }
    if (displayElement != null) {
      json['_display'] = displayElement!.toJson();
    }
    if (designation != null && designation!.isNotEmpty) {
      json['designation'] = designation!
          .map<dynamic>((ValueSetDesignation v) => v.toJson())
          .toList();
    }
    if (contains != null && contains!.isNotEmpty) {
      json['contains'] =
          contains!.map<dynamic>((ValueSetContains v) => v.toJson()).toList();
    }
    return json;
  }

  factory ValueSetContains.fromJson(Map<String, dynamic> json) {
    return ValueSetContains(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
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
      system: json['system'] != null ? FhirUri(json['system']) : null,
      systemElement: json['_system'] != null
          ? Element.fromJson(json['_system'] as Map<String, dynamic>)
          : null,
      abstract_:
          json['abstract'] != null ? FhirBoolean(json['abstract']) : null,
      abstractElement: json['_abstract'] != null
          ? Element.fromJson(json['_abstract'] as Map<String, dynamic>)
          : null,
      inactive: json['inactive'] != null ? FhirBoolean(json['inactive']) : null,
      inactiveElement: json['_inactive'] != null
          ? Element.fromJson(json['_inactive'] as Map<String, dynamic>)
          : null,
      version: json['version'] != null ? FhirString(json['version']) : null,
      versionElement: json['_version'] != null
          ? Element.fromJson(json['_version'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null ? FhirCode(json['code']) : null,
      codeElement: json['_code'] != null
          ? Element.fromJson(json['_code'] as Map<String, dynamic>)
          : null,
      display: json['display'] != null ? FhirString(json['display']) : null,
      displayElement: json['_display'] != null
          ? Element.fromJson(json['_display'] as Map<String, dynamic>)
          : null,
      designation: json['designation'] != null
          ? (json['designation'] as List<dynamic>)
              .map<ValueSetDesignation>((dynamic v) =>
                  ValueSetDesignation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      contains: json['contains'] != null
          ? (json['contains'] as List<dynamic>)
              .map<ValueSetContains>((dynamic v) =>
                  ValueSetContains.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  ValueSetContains clone() => throw UnimplementedError();
  @override
  ValueSetContains copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirUri? system,
    Element? systemElement,
    FhirBoolean? abstract_,
    Element? abstractElement,
    FhirBoolean? inactive,
    Element? inactiveElement,
    FhirString? version,
    Element? versionElement,
    FhirCode? code,
    Element? codeElement,
    FhirString? display,
    Element? displayElement,
    List<ValueSetDesignation>? designation,
    List<ValueSetContains>? contains,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ValueSetContains(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      system: system ?? this.system,
      systemElement: systemElement ?? this.systemElement,
      abstract_: abstract_ ?? this.abstract_,
      abstractElement: abstractElement ?? this.abstractElement,
      inactive: inactive ?? this.inactive,
      inactiveElement: inactiveElement ?? this.inactiveElement,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      designation: designation ?? this.designation,
      contains: contains ?? this.contains,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ValueSetContains.fromYaml(dynamic yaml) => yaml is String
      ? ValueSetContains.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ValueSetContains.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ValueSetContains cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ValueSetContains.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ValueSetContains.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
