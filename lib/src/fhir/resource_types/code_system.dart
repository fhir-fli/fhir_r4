import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'code_system.g.dart';

/// [CodeSystem] /// The CodeSystem resource is used to declare the existence of and describe a
/// code system or code system supplement and its key properties, and
/// optionally define a part or all of its content.
@JsonSerializable()
class CodeSystem extends DomainResource {
  CodeSystem({
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
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.caseSensitive,
    this.caseSensitiveElement,
    this.valueSet,
    this.valueSetElement,
    this.hierarchyMeaning,
    this.hierarchyMeaningElement,
    this.compositional,
    this.compositionalElement,
    this.versionNeeded,
    this.versionNeededElement,
    required this.content,
    this.contentElement,
    this.supplements,
    this.supplementsElement,
    this.count,
    this.countElement,
    this.filter,
    this.property,
    this.concept,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.CodeSystem);
  @override
  String get fhirType => 'CodeSystem';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [url] /// An absolute URI that is used to identify this code system when it is
  /// referenced in a specification, model, design or an instance; also called
  /// its canonical identifier. This SHOULD be globally unique and SHOULD be a
  /// literal address at which at which an authoritative instance of this code
  /// system is (or will be) published. This URL can be the target of a canonical
  /// reference. It SHALL remain the same when the code system is stored on
  /// different servers. This is used in [Coding](datatypes.html#Coding).system.
  @JsonKey(name: 'url')
  final FhirUri? url;
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [identifier] /// A formal identifier that is used to identify this code system when it is
  /// represented in other formats, or referenced in a specification, model,
  /// design or an instance.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [version] /// The identifier that is used to identify this version of the code system
  /// when it is referenced in a specification, model, design or instance. This
  /// is an arbitrary value managed by the code system author and is not expected
  /// to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd)
  /// if a managed version is not available. There is also no expectation that
  /// versions can be placed in a lexicographical sequence. This is used in
  /// [Coding](datatypes.html#Coding).version.
  @JsonKey(name: 'version')
  final FhirString? version;
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [name] /// A natural language name identifying the code system. This name should be
  /// usable as an identifier for the module by machine processing applications
  /// such as code generation.
  @JsonKey(name: 'name')
  final FhirString? name;
  @JsonKey(name: '_name')
  final Element? nameElement;

  /// [title] /// A short, descriptive, user-friendly title for the code system.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [status] /// The date (and optionally time) when the code system resource was created or
  /// revised.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [experimental] /// A Boolean value to indicate that this code system is authored for testing
  /// purposes (or education/evaluation/marketing) and is not intended to be used
  /// for genuine usage.
  @JsonKey(name: 'experimental')
  final FhirBoolean? experimental;
  @JsonKey(name: '_experimental')
  final Element? experimentalElement;

  /// [date] /// The date (and optionally time) when the code system was published. The date
  /// must change when the business version changes and it must change if the
  /// status code changes. In addition, it should change when the substantive
  /// content of the code system changes.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [publisher] /// The name of the organization or individual that published the code system.
  @JsonKey(name: 'publisher')
  final FhirString? publisher;
  @JsonKey(name: '_publisher')
  final Element? publisherElement;

  /// [contact] /// Contact details to assist a user in finding and communicating with the
  /// publisher.
  @JsonKey(name: 'contact')
  final List<ContactDetail>? contact;

  /// [description] /// A free text natural language description of the code system from a
  /// consumer's perspective.
  @JsonKey(name: 'description')
  final FhirMarkdown? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [useContext] /// The content was developed with a focus and intent of supporting the
  /// contexts that are listed. These contexts may be general categories (gender,
  /// age, ...) or may be references to specific programs (insurance plans,
  /// studies, ...) and may be used to assist with indexing and searching for
  /// appropriate code system instances.
  @JsonKey(name: 'useContext')
  final List<UsageContext>? useContext;

  /// [jurisdiction] /// A legal or geographic region in which the code system is intended to be
  /// used.
  @JsonKey(name: 'jurisdiction')
  final List<CodeableConcept>? jurisdiction;

  /// [purpose] /// Explanation of why this code system is needed and why it has been designed
  /// as it has.
  @JsonKey(name: 'purpose')
  final FhirMarkdown? purpose;
  @JsonKey(name: '_purpose')
  final Element? purposeElement;

  /// [copyright] /// A copyright statement relating to the code system and/or its contents.
  /// Copyright statements are generally legal restrictions on the use and
  /// publishing of the code system.
  @JsonKey(name: 'copyright')
  final FhirMarkdown? copyright;
  @JsonKey(name: '_copyright')
  final Element? copyrightElement;

  /// [caseSensitive] /// If code comparison is case sensitive when codes within this system are
  /// compared to each other.
  @JsonKey(name: 'caseSensitive')
  final FhirBoolean? caseSensitive;
  @JsonKey(name: '_caseSensitive')
  final Element? caseSensitiveElement;

  /// [valueSet] /// Canonical reference to the value set that contains the entire code system.
  @JsonKey(name: 'valueSet')
  final FhirCanonical? valueSet;
  @JsonKey(name: '_valueSet')
  final Element? valueSetElement;

  /// [hierarchyMeaning] /// The meaning of the hierarchy of concepts as represented in this resource.
  @JsonKey(name: 'hierarchyMeaning')
  final CodeSystemHierarchyMeaning? hierarchyMeaning;
  @JsonKey(name: '_hierarchyMeaning')
  final Element? hierarchyMeaningElement;

  /// [compositional] /// The code system defines a compositional (post-coordination) grammar.
  @JsonKey(name: 'compositional')
  final FhirBoolean? compositional;
  @JsonKey(name: '_compositional')
  final Element? compositionalElement;

  /// [versionNeeded] /// This flag is used to signify that the code system does not commit to
  /// concept permanence across versions. If true, a version must be specified
  /// when referencing this code system.
  @JsonKey(name: 'versionNeeded')
  final FhirBoolean? versionNeeded;
  @JsonKey(name: '_versionNeeded')
  final Element? versionNeededElement;

  /// [content] /// The extent of the content of the code system (the concepts and codes it
  /// defines) are represented in this resource instance.
  @JsonKey(name: 'content')
  final CodeSystemContentMode content;
  @JsonKey(name: '_content')
  final Element? contentElement;

  /// [supplements] /// The canonical URL of the code system that this code system supplement is
  /// adding designations and properties to.
  @JsonKey(name: 'supplements')
  final FhirCanonical? supplements;
  @JsonKey(name: '_supplements')
  final Element? supplementsElement;

  /// [count] /// The total number of concepts defined by the code system. Where the code
  /// system has a compositional grammar, the basis of this count is defined by
  /// the system steward.
  @JsonKey(name: 'count')
  final FhirUnsignedInt? count;
  @JsonKey(name: '_count')
  final Element? countElement;

  /// [filter] /// A filter that can be used in a value set compose statement when selecting
  /// concepts using a filter.
  @JsonKey(name: 'filter')
  final List<CodeSystemFilter>? filter;

  /// [property] /// A property defines an additional slot through which additional information
  /// can be provided about a concept.
  @JsonKey(name: 'property')
  final List<CodeSystemProperty>? property;

  /// [concept] /// Concepts that are in the code system. The concept definitions are
  /// inherently hierarchical, but the definitions must be consulted to determine
  /// what the meanings of the hierarchical relationships are.
  @JsonKey(name: 'concept')
  final List<CodeSystemConcept>? concept;
  factory CodeSystem.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodeSystemToJson(this);

  @override
  CodeSystem clone() => throw UnimplementedError();
  @override
  CodeSystem copyWith({
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
    FhirMarkdown? purpose,
    Element? purposeElement,
    FhirMarkdown? copyright,
    Element? copyrightElement,
    FhirBoolean? caseSensitive,
    Element? caseSensitiveElement,
    FhirCanonical? valueSet,
    Element? valueSetElement,
    CodeSystemHierarchyMeaning? hierarchyMeaning,
    Element? hierarchyMeaningElement,
    FhirBoolean? compositional,
    Element? compositionalElement,
    FhirBoolean? versionNeeded,
    Element? versionNeededElement,
    CodeSystemContentMode? content,
    Element? contentElement,
    FhirCanonical? supplements,
    Element? supplementsElement,
    FhirUnsignedInt? count,
    Element? countElement,
    List<CodeSystemFilter>? filter,
    List<CodeSystemProperty>? property,
    List<CodeSystemConcept>? concept,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CodeSystem(
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
      purpose: purpose ?? this.purpose,
      purposeElement: purposeElement ?? this.purposeElement,
      copyright: copyright ?? this.copyright,
      copyrightElement: copyrightElement ?? this.copyrightElement,
      caseSensitive: caseSensitive ?? this.caseSensitive,
      caseSensitiveElement: caseSensitiveElement ?? this.caseSensitiveElement,
      valueSet: valueSet ?? this.valueSet,
      valueSetElement: valueSetElement ?? this.valueSetElement,
      hierarchyMeaning: hierarchyMeaning ?? this.hierarchyMeaning,
      hierarchyMeaningElement:
          hierarchyMeaningElement ?? this.hierarchyMeaningElement,
      compositional: compositional ?? this.compositional,
      compositionalElement: compositionalElement ?? this.compositionalElement,
      versionNeeded: versionNeeded ?? this.versionNeeded,
      versionNeededElement: versionNeededElement ?? this.versionNeededElement,
      content: content ?? this.content,
      contentElement: contentElement ?? this.contentElement,
      supplements: supplements ?? this.supplements,
      supplementsElement: supplementsElement ?? this.supplementsElement,
      count: count ?? this.count,
      countElement: countElement ?? this.countElement,
      filter: filter ?? this.filter,
      property: property ?? this.property,
      concept: concept ?? this.concept,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CodeSystem.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CodeSystem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CodeSystem cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CodeSystem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeSystem.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CodeSystemFilter] /// A filter that can be used in a value set compose statement when selecting
/// concepts using a filter.
@JsonSerializable()
class CodeSystemFilter extends BackboneElement {
  CodeSystemFilter({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.description,
    this.descriptionElement,
    required this.operator_,
    this.operatorElement,
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
  String get fhirType => 'CodeSystemFilter';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The code that identifies this filter when it is used as a filter in
  /// [ValueSet](valueset.html#).compose.include.filter.
  @JsonKey(name: 'code')
  final FhirCode code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [description] /// A description of how or why the filter is used.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [operator_] /// A list of operators that can be used with the filter.
  @JsonKey(name: 'operator')
  final List<FilterOperator> operator_;
  @JsonKey(name: '_operator')
  final List<Element>? operatorElement;

  /// [value] /// A description of what the value for the filter should be.
  @JsonKey(name: 'value')
  final FhirString value;
  @JsonKey(name: '_value')
  final Element? valueElement;
  factory CodeSystemFilter.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemFilterFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodeSystemFilterToJson(this);

  @override
  CodeSystemFilter clone() => throw UnimplementedError();
  @override
  CodeSystemFilter copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirString? description,
    Element? descriptionElement,
    List<FilterOperator>? operator_,
    List<Element>? operatorElement,
    FhirString? value,
    Element? valueElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CodeSystemFilter(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      operator_: operator_ ?? this.operator_,
      operatorElement: operatorElement ?? this.operatorElement,
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

  factory CodeSystemFilter.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystemFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CodeSystemFilter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CodeSystemFilter cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CodeSystemFilter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeSystemFilter.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CodeSystemProperty] /// A property defines an additional slot through which additional information
/// can be provided about a concept.
@JsonSerializable()
class CodeSystemProperty extends BackboneElement {
  CodeSystemProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.uri,
    this.uriElement,
    this.description,
    this.descriptionElement,
    required this.type,
    this.typeElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'CodeSystemProperty';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A code that is used to identify the property. The code is used internally
  /// (in CodeSystem.concept.property.code) and also externally, such as in
  /// property filters.
  @JsonKey(name: 'code')
  final FhirCode code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [uri] /// Reference to the formal meaning of the property. One possible source of
  /// meaning is the [Concept Properties](codesystem-concept-properties.html)
  /// code system.
  @JsonKey(name: 'uri')
  final FhirUri? uri;
  @JsonKey(name: '_uri')
  final Element? uriElement;

  /// [description] /// A description of the property- why it is defined, and how its value might
  /// be used.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [type] /// The type of the property value. Properties of type "code" contain a code
  /// defined by the code system (e.g. a reference to another defined concept).
  @JsonKey(name: 'type')
  final PropertyTypeEnum type;
  @JsonKey(name: '_type')
  final Element? typeElement;
  factory CodeSystemProperty.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemPropertyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodeSystemPropertyToJson(this);

  @override
  CodeSystemProperty clone() => throw UnimplementedError();
  @override
  CodeSystemProperty copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirUri? uri,
    Element? uriElement,
    FhirString? description,
    Element? descriptionElement,
    PropertyTypeEnum? type,
    Element? typeElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CodeSystemProperty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      uri: uri ?? this.uri,
      uriElement: uriElement ?? this.uriElement,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CodeSystemProperty.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystemProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CodeSystemProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CodeSystemProperty cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CodeSystemProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeSystemProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CodeSystemConcept] /// Concepts that are in the code system. The concept definitions are
/// inherently hierarchical, but the definitions must be consulted to determine
/// what the meanings of the hierarchical relationships are.
@JsonSerializable()
class CodeSystemConcept extends BackboneElement {
  CodeSystemConcept({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.definition,
    this.definitionElement,
    this.designation,
    this.property,
    this.concept,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'CodeSystemConcept';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A code - a text symbol - that uniquely identifies the concept within the
  /// code system.
  @JsonKey(name: 'code')
  final FhirCode code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [display] /// A human readable string that is the recommended default way to present this
  /// concept to a user.
  @JsonKey(name: 'display')
  final FhirString? display;
  @JsonKey(name: '_display')
  final Element? displayElement;

  /// [definition] /// The formal definition of the concept. The code system resource does not
  /// make formal definitions required, because of the prevalence of legacy
  /// systems. However, they are highly recommended, as without them there is no
  /// formal meaning associated with the concept.
  @JsonKey(name: 'definition')
  final FhirString? definition;
  @JsonKey(name: '_definition')
  final Element? definitionElement;

  /// [designation] /// Additional representations for the concept - other languages, aliases,
  /// specialized purposes, used for particular purposes, etc.
  @JsonKey(name: 'designation')
  final List<CodeSystemDesignation>? designation;

  /// [property] /// A property value for this concept.
  @JsonKey(name: 'property')
  final List<CodeSystemProperty>? property;

  /// [concept] /// Defines children of a concept to produce a hierarchy of concepts. The
  /// nature of the relationships is variable (is-a/contains/categorizes) - see
  /// hierarchyMeaning.
  @JsonKey(name: 'concept')
  final List<CodeSystemConcept>? concept;
  factory CodeSystemConcept.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemConceptFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodeSystemConceptToJson(this);

  @override
  CodeSystemConcept clone() => throw UnimplementedError();
  @override
  CodeSystemConcept copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirString? display,
    Element? displayElement,
    FhirString? definition,
    Element? definitionElement,
    List<CodeSystemDesignation>? designation,
    List<CodeSystemProperty>? property,
    List<CodeSystemConcept>? concept,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CodeSystemConcept(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      display: display ?? this.display,
      displayElement: displayElement ?? this.displayElement,
      definition: definition ?? this.definition,
      definitionElement: definitionElement ?? this.definitionElement,
      designation: designation ?? this.designation,
      property: property ?? this.property,
      concept: concept ?? this.concept,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CodeSystemConcept.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystemConcept.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CodeSystemConcept.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CodeSystemConcept cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CodeSystemConcept.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeSystemConcept.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CodeSystemDesignation] /// Additional representations for the concept - other languages, aliases,
/// specialized purposes, used for particular purposes, etc.
@JsonSerializable()
class CodeSystemDesignation extends BackboneElement {
  CodeSystemDesignation({
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
  String get fhirType => 'CodeSystemDesignation';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [language] /// The language this designation is defined for.
  @JsonKey(name: 'language')
  final CommonLanguages? language;
  @JsonKey(name: '_language')
  final Element? languageElement;

  /// [use] /// A code that details how this designation would be used.
  @JsonKey(name: 'use')
  final Coding? use;

  /// [value] /// The text value for this designation.
  @JsonKey(name: 'value')
  final FhirString value;
  @JsonKey(name: '_value')
  final Element? valueElement;
  factory CodeSystemDesignation.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemDesignationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodeSystemDesignationToJson(this);

  @override
  CodeSystemDesignation clone() => throw UnimplementedError();
  @override
  CodeSystemDesignation copyWith({
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
    return CodeSystemDesignation(
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

  factory CodeSystemDesignation.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystemDesignation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CodeSystemDesignation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CodeSystemDesignation cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CodeSystemDesignation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeSystemDesignation.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [CodeSystemProperty1] /// A property value for this concept.
@JsonSerializable()
class CodeSystemProperty1 extends BackboneElement {
  CodeSystemProperty1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    required this.valueCode,
    this.valueCodeElement,
    required this.valueCoding,
    required this.valueString,
    this.valueStringElement,
    required this.valueInteger,
    this.valueIntegerElement,
    required this.valueBoolean,
    this.valueBooleanElement,
    required this.valueDateTime,
    this.valueDateTimeElement,
    required this.valueDecimal,
    this.valueDecimalElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'CodeSystemProperty1';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A code that is a reference to CodeSystem.property.code.
  @JsonKey(name: 'code')
  final FhirCode code;
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [valueCode] /// The value of this property.
  @JsonKey(name: 'valueCode')
  final FhirCode valueCode;
  @JsonKey(name: '_valueCode')
  final Element? valueCodeElement;

  /// [valueCoding] /// The value of this property.
  @JsonKey(name: 'valueCoding')
  final Coding valueCoding;

  /// [valueString] /// The value of this property.
  @JsonKey(name: 'valueString')
  final FhirString valueString;
  @JsonKey(name: '_valueString')
  final Element? valueStringElement;

  /// [valueInteger] /// The value of this property.
  @JsonKey(name: 'valueInteger')
  final FhirInteger valueInteger;
  @JsonKey(name: '_valueInteger')
  final Element? valueIntegerElement;

  /// [valueBoolean] /// The value of this property.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueDateTime] /// The value of this property.
  @JsonKey(name: 'valueDateTime')
  final FhirDateTime valueDateTime;
  @JsonKey(name: '_valueDateTime')
  final Element? valueDateTimeElement;

  /// [valueDecimal] /// The value of this property.
  @JsonKey(name: 'valueDecimal')
  final FhirDecimal valueDecimal;
  @JsonKey(name: '_valueDecimal')
  final Element? valueDecimalElement;
  factory CodeSystemProperty1.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemProperty1FromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CodeSystemProperty1ToJson(this);

  @override
  CodeSystemProperty1 clone() => throw UnimplementedError();
  @override
  CodeSystemProperty1 copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    FhirCode? valueCode,
    Element? valueCodeElement,
    Coding? valueCoding,
    FhirString? valueString,
    Element? valueStringElement,
    FhirInteger? valueInteger,
    Element? valueIntegerElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    FhirDateTime? valueDateTime,
    Element? valueDateTimeElement,
    FhirDecimal? valueDecimal,
    Element? valueDecimalElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return CodeSystemProperty1(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      valueCode: valueCode ?? this.valueCode,
      valueCodeElement: valueCodeElement ?? this.valueCodeElement,
      valueCoding: valueCoding ?? this.valueCoding,
      valueString: valueString ?? this.valueString,
      valueStringElement: valueStringElement ?? this.valueStringElement,
      valueInteger: valueInteger ?? this.valueInteger,
      valueIntegerElement: valueIntegerElement ?? this.valueIntegerElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueDateTime: valueDateTime ?? this.valueDateTime,
      valueDateTimeElement: valueDateTimeElement ?? this.valueDateTimeElement,
      valueDecimal: valueDecimal ?? this.valueDecimal,
      valueDecimalElement: valueDecimalElement ?? this.valueDecimalElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory CodeSystemProperty1.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystemProperty1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? CodeSystemProperty1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'CodeSystemProperty1 cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory CodeSystemProperty1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return CodeSystemProperty1.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
