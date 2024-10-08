import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'value_set.g.dart';

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
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.ValueSet, fhirType: 'ValueSet');
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
  factory ValueSet.fromJson(Map<String, dynamic> json) =>
      _$ValueSetFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ValueSetToJson(this);

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
  }) : super(fhirType: 'ValueSetCompose');
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
  factory ValueSetCompose.fromJson(Map<String, dynamic> json) =>
      _$ValueSetComposeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ValueSetComposeToJson(this);

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
  }) : super(fhirType: 'ValueSetInclude');
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
  factory ValueSetInclude.fromJson(Map<String, dynamic> json) =>
      _$ValueSetIncludeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ValueSetIncludeToJson(this);

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
  }) : super(fhirType: 'ValueSetConcept');
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
  factory ValueSetConcept.fromJson(Map<String, dynamic> json) =>
      _$ValueSetConceptFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ValueSetConceptToJson(this);

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
  }) : super(fhirType: 'ValueSetDesignation');
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
  final DesignationUse? use;

  /// [value] /// The text value for this designation.
  @JsonKey(name: 'value')
  final FhirString value;
  @JsonKey(name: '_value')
  final Element? valueElement;
  factory ValueSetDesignation.fromJson(Map<String, dynamic> json) =>
      _$ValueSetDesignationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ValueSetDesignationToJson(this);

  @override
  ValueSetDesignation clone() => throw UnimplementedError();
  @override
  ValueSetDesignation copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CommonLanguages? language,
    Element? languageElement,
    DesignationUse? use,
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
  }) : super(fhirType: 'ValueSetFilter');
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
  factory ValueSetFilter.fromJson(Map<String, dynamic> json) =>
      _$ValueSetFilterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ValueSetFilterToJson(this);

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
  }) : super(fhirType: 'ValueSetExpansion');
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
  factory ValueSetExpansion.fromJson(Map<String, dynamic> json) =>
      _$ValueSetExpansionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ValueSetExpansionToJson(this);

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
  }) : super(fhirType: 'ValueSetParameter');
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
  factory ValueSetParameter.fromJson(Map<String, dynamic> json) =>
      _$ValueSetParameterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ValueSetParameterToJson(this);

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
  }) : super(fhirType: 'ValueSetContains');
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
  factory ValueSetContains.fromJson(Map<String, dynamic> json) =>
      _$ValueSetContainsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ValueSetContainsToJson(this);

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
