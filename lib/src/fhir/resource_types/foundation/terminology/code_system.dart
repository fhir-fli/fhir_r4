// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'code_system.freezed.dart';
part 'code_system.g.dart';

/// [CodeSystem] The CodeSystem resource is used to declare the existence of
@freezed
class CodeSystem with _$CodeSystem implements DomainResource {
  /// [CodeSystem] The CodeSystem resource is used to declare the existence of
  const CodeSystem._();

  /// [CodeSystem] The CodeSystem resource is used to declare the existence of
  /// and describe a code system or code system supplement and its key
  ///  properties, and optionally define a part or all of its content.
  ///
  /// [resourceType] This is a CodeSystem resource
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
  /// [url] An absolute URI that is used to identify this code system when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// code system is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the code system is
  /// stored on different servers. This is used in
  ///  [Coding](datatypes.html#Coding).system.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this code
  /// system when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  ///
  /// [version] The identifier that is used to identify this version of the
  /// code system when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the code system author and
  /// is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  ///  sequence. This is used in [Coding](datatypes.html#Coding).version.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the code system. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the code system.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [status] The date (and optionally time) when the code system resource was
  ///  created or revised.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this code system is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  ///
  /// [experimentalElement] Extensions for experimental
  ///
  /// [date] The date  (and optionally time) when the code system was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the code system changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  code system.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the code system
  ///  from a consumer's perspective.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate code system instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the code system is
  ///  intended to be used.
  ///
  /// [purpose] Explanation of why this code system is needed and why it has
  ///  been designed as it has.
  ///
  /// [purposeElement] Extensions for purpose
  ///
  /// [copyright] A copyright statement relating to the code system and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  ///  and publishing of the code system.
  ///
  /// [copyrightElement] Extensions for copyright
  ///
  /// [caseSensitive] If code comparison is case sensitive when codes within
  ///  this system are compared to each other.
  ///
  /// [caseSensitiveElement] Extensions for caseSensitive
  ///
  /// [valueSet] Canonical reference to the value set that contains the entire
  ///  code system.
  ///
  /// [hierarchyMeaning] The meaning of the hierarchy of concepts as
  ///  represented in this resource.
  ///
  /// [hierarchyMeaningElement] Extensions for hierarchyMeaning
  ///
  /// [compositional] The code system defines a compositional
  ///  (post-coordination) grammar.
  ///
  /// [compositionalElement] Extensions for compositional
  ///
  /// [versionNeeded] This flag is used to signify that the code system does
  /// not commit to concept permanence across versions. If true, a version must
  ///  be specified when referencing this code system.
  ///
  /// [versionNeededElement] Extensions for versionNeeded
  ///
  /// [content] The extent of the content of the code system (the concepts and
  ///  codes it defines) are represented in this resource instance.
  ///
  /// [contentElement] Extensions for content
  ///
  /// [supplements] The canonical URL of the code system that this code system
  ///  supplement is adding designations and properties to.
  ///
  /// [count] The total number of concepts defined by the code system. Where
  /// the code system has a compositional grammar, the basis of this count is
  ///  defined by the system steward.
  ///
  /// [countElement] Extensions for count
  ///
  /// [filter] A filter that can be used in a value set compose statement when
  ///  selecting concepts using a filter.
  ///
  /// [property] A property defines an additional slot through which additional
  ///  information can be provided about a concept.
  ///
  /// [concept] Concepts that are in the code system. The concept definitions
  /// are inherently hierarchical, but the definitions must be consulted to
  ///  determine what the meanings of the hierarchical relationships are.
  const factory CodeSystem({
    @Default(R4ResourceType.CodeSystem)
    @JsonKey(unknownEnumValue: R4ResourceType.CodeSystem)

    /// [resourceType] This is a CodeSystem resource
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

    /// [url] An absolute URI that is used to identify this code system when it
    /// is referenced in a specification, model, design or an instance; also
    /// called its canonical identifier. This SHOULD be globally unique and SHOULD
    /// be a literal address at which at which an authoritative instance of this
    /// code system is (or will be) published. This URL can be the target of a
    /// canonical reference. It SHALL remain the same when the code system is
    /// stored on different servers. This is used in
    ///  [Coding](datatypes.html#Coding).system.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [identifier] A formal identifier that is used to identify this code
    /// system when it is represented in other formats, or referenced in a
    ///  specification, model, design or an instance.
    List<Identifier>? identifier,

    /// [version] The identifier that is used to identify this version of the
    /// code system when it is referenced in a specification, model, design or
    /// instance. This is an arbitrary value managed by the code system author and
    /// is not expected to be globally unique. For example, it might be a
    /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
    /// also no expectation that versions can be placed in a lexicographical
    ///  sequence. This is used in [Coding](datatypes.html#Coding).version.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [name] A natural language name identifying the code system. This name
    /// should be usable as an identifier for the module by machine processing
    ///  applications such as code generation.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [title] A short, descriptive, user-friendly title for the code system.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [status] The date (and optionally time) when the code system resource was
    ///  created or revised.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [experimental] A Boolean value to indicate that this code system is
    /// authored for testing purposes (or education/evaluation/marketing) and is
    ///  not intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] Extensions for experimental
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,

    /// [date] The date  (and optionally time) when the code system was
    /// published. The date must change when the business version changes and it
    /// must change if the status code changes. In addition, it should change when
    ///  the substantive content of the code system changes.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [publisher] The name of the organization or individual that published the
    ///  code system.
    String? publisher,

    /// [publisherElement] Extensions for publisher
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the code system
    ///  from a consumer's perspective.
    FhirMarkdown? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    /// supporting the contexts that are listed. These contexts may be general
    /// categories (gender, age, ...) or may be references to specific programs
    /// (insurance plans, studies, ...) and may be used to assist with indexing
    ///  and searching for appropriate code system instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the code system is
    ///  intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this code system is needed and why it has
    ///  been designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] Extensions for purpose
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,

    /// [copyright] A copyright statement relating to the code system and/or its
    /// contents. Copyright statements are generally legal restrictions on the use
    ///  and publishing of the code system.
    FhirMarkdown? copyright,

    /// [copyrightElement] Extensions for copyright
    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,

    /// [caseSensitive] If code comparison is case sensitive when codes within
    ///  this system are compared to each other.
    FhirBoolean? caseSensitive,

    /// [caseSensitiveElement] Extensions for caseSensitive
    @JsonKey(name: '_caseSensitive') PrimitiveElement? caseSensitiveElement,

    /// [valueSet] Canonical reference to the value set that contains the entire
    ///  code system.
    FhirCanonical? valueSet,

    /// [hierarchyMeaning] The meaning of the hierarchy of concepts as
    ///  represented in this resource.
    FhirCode? hierarchyMeaning,

    /// [hierarchyMeaningElement] Extensions for hierarchyMeaning
    @JsonKey(name: '_hierarchyMeaning')
    PrimitiveElement? hierarchyMeaningElement,

    /// [compositional] The code system defines a compositional
    ///  (post-coordination) grammar.
    FhirBoolean? compositional,

    /// [compositionalElement] Extensions for compositional
    @JsonKey(name: '_compositional') PrimitiveElement? compositionalElement,

    /// [versionNeeded] This flag is used to signify that the code system does
    /// not commit to concept permanence across versions. If true, a version must
    ///  be specified when referencing this code system.
    FhirBoolean? versionNeeded,

    /// [versionNeededElement] Extensions for versionNeeded
    @JsonKey(name: '_versionNeeded') PrimitiveElement? versionNeededElement,

    /// [content] The extent of the content of the code system (the concepts and
    ///  codes it defines) are represented in this resource instance.
    FhirCode? content,

    /// [contentElement] Extensions for content
    @JsonKey(name: '_content') PrimitiveElement? contentElement,

    /// [supplements] The canonical URL of the code system that this code system
    ///  supplement is adding designations and properties to.
    FhirCanonical? supplements,

    /// [count] The total number of concepts defined by the code system. Where
    /// the code system has a compositional grammar, the basis of this count is
    ///  defined by the system steward.
    FhirUnsignedInt? count,

    /// [countElement] Extensions for count
    @JsonKey(name: '_count') PrimitiveElement? countElement,

    /// [filter] A filter that can be used in a value set compose statement when
    ///  selecting concepts using a filter.
    List<CodeSystemFilter>? filter,

    /// [property] A property defines an additional slot through which additional
    ///  information can be provided about a concept.
    List<CodeSystemProperty>? property,

    /// [concept] Concepts that are in the code system. The concept definitions
    /// are inherently hierarchical, but the definitions must be consulted to
    ///  determine what the meanings of the hierarchical relationships are.
    List<CodeSystemConcept>? concept,
  }) = _CodeSystem;

  @override
  String get fhirType => 'CodeSystem';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CodeSystem.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CodeSystem.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CodeSystem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CodeSystem.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemFromJson(json);

  /// Acts like a constructor, returns a [CodeSystem], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CodeSystem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodeSystemFromJson(json);
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

/// [CodeSystemFilter] The CodeSystem resource is used to declare the
@freezed

/// [CodeSystemFilter] The CodeSystem resource is used to declare the
@freezed
class CodeSystemFilter with _$CodeSystemFilter implements BackboneElement {
  /// [CodeSystemFilter] The CodeSystem resource is used to declare the
  const CodeSystemFilter._();

  /// [CodeSystemFilter] The CodeSystem resource is used to declare the
  /// existence of and describe a code system or code system supplement and its
  ///  key properties, and optionally define a part or all of its content.
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
  /// [code] The code that identifies this filter when it is used as a filter
  ///  in [[[ValueSet]]].compose.include.filter.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [description] A description of how or why the filter is used.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [operator] A list of operators that can be used with the filter.
  ///
  /// [operatorElement] Extensions for operator
  ///
  /// [value] A description of what the value for the filter should be.
  ///
  /// [valueElement] Extensions for value
  const factory CodeSystemFilter({
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

    /// [code] The code that identifies this filter when it is used as a filter
    ///  in [[[ValueSet]]].compose.include.filter.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [description] A description of how or why the filter is used.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [operator] A list of operators that can be used with the filter.
    @JsonKey(name: 'operator') List<FhirCode>? operator_,

    /// [operatorElement] Extensions for operator
    @JsonKey(name: '_operator') List<Element?>? operatorElement,

    /// [value] A description of what the value for the filter should be.
    String? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') PrimitiveElement? valueElement,
  }) = _CodeSystemFilter;

  @override
  String get fhirType => 'CodeSystemFilter';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CodeSystemFilter.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystemFilter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CodeSystemFilter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CodeSystemFilter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CodeSystemFilter.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemFilterFromJson(json);

  /// Acts like a constructor, returns a [CodeSystemFilter], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CodeSystemFilter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodeSystemFilterFromJson(json);
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

/// [CodeSystemProperty] The CodeSystem resource is used to declare the
@freezed

/// [CodeSystemProperty] The CodeSystem resource is used to declare the
@freezed
class CodeSystemProperty with _$CodeSystemProperty implements BackboneElement {
  /// [CodeSystemProperty] The CodeSystem resource is used to declare the
  const CodeSystemProperty._();

  /// [CodeSystemProperty] The CodeSystem resource is used to declare the
  /// existence of and describe a code system or code system supplement and its
  ///  key properties, and optionally define a part or all of its content.
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
  /// [code] A code that is used to identify the property. The code is used
  /// internally (in CodeSystem.concept.property.code) and also externally, such
  ///  as in property filters.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [uri] Reference to the formal meaning of the property. One possible
  /// source of meaning is the [Concept
  ///  Properties](codesystem-concept-properties.html) code system.
  ///
  /// [uriElement] Extensions for uri
  ///
  /// [description] A description of the property- why it is defined, and how
  ///  its value might be used.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [type] The type of the property value. Properties of type "code" contain
  /// a code defined by the code system (e.g. a reference to another defined
  ///  concept).
  ///
  /// [typeElement] Extensions for type
  const factory CodeSystemProperty({
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

    /// [code] A code that is used to identify the property. The code is used
    /// internally (in CodeSystem.concept.property.code) and also externally, such
    ///  as in property filters.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [uri] Reference to the formal meaning of the property. One possible
    /// source of meaning is the [Concept
    ///  Properties](codesystem-concept-properties.html) code system.
    FhirUri? uri,

    /// [uriElement] Extensions for uri
    @JsonKey(name: '_uri') PrimitiveElement? uriElement,

    /// [description] A description of the property- why it is defined, and how
    ///  its value might be used.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [type] The type of the property value. Properties of type "code" contain
    /// a code defined by the code system (e.g. a reference to another defined
    ///  concept).
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,
  }) = _CodeSystemProperty;

  @override
  String get fhirType => 'CodeSystemProperty';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CodeSystemProperty.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystemProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CodeSystemProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CodeSystemProperty cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CodeSystemProperty.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemPropertyFromJson(json);

  /// Acts like a constructor, returns a [CodeSystemProperty], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CodeSystemProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodeSystemPropertyFromJson(json);
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

/// [CodeSystemConcept] The CodeSystem resource is used to declare the
@freezed

/// [CodeSystemConcept] The CodeSystem resource is used to declare the
@freezed
class CodeSystemConcept with _$CodeSystemConcept implements BackboneElement {
  /// [CodeSystemConcept] The CodeSystem resource is used to declare the
  const CodeSystemConcept._();

  /// [CodeSystemConcept] The CodeSystem resource is used to declare the
  /// existence of and describe a code system or code system supplement and its
  ///  key properties, and optionally define a part or all of its content.
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
  /// [code] A code - a text symbol - that uniquely identifies the concept
  ///  within the code system.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [display] A human readable string that is the recommended default way to
  ///  present this concept to a user.
  ///
  /// [displayElement] Extensions for display
  ///
  /// [definition] The formal definition of the concept. The code system
  /// resource does not make formal definitions required, because of the
  /// prevalence of legacy systems. However, they are highly recommended, as
  ///  without them there is no formal meaning associated with the concept.
  ///
  /// [definitionElement] Extensions for definition
  ///
  /// [designation] Additional representations for the concept - other
  /// languages, aliases, specialized purposes, used for particular purposes,
  ///  etc.
  ///
  /// [property] A property value for this concept.
  ///
  /// [concept] Defines children of a concept to produce a hierarchy of
  /// concepts. The nature of the relationships is variable
  ///  (is-a/contains/categorizes) - see hierarchyMeaning.
  const factory CodeSystemConcept({
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

    /// [code] A code - a text symbol - that uniquely identifies the concept
    ///  within the code system.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [display] A human readable string that is the recommended default way to
    ///  present this concept to a user.
    String? display,

    /// [displayElement] Extensions for display
    @JsonKey(name: '_display') PrimitiveElement? displayElement,

    /// [definition] The formal definition of the concept. The code system
    /// resource does not make formal definitions required, because of the
    /// prevalence of legacy systems. However, they are highly recommended, as
    ///  without them there is no formal meaning associated with the concept.
    String? definition,

    /// [definitionElement] Extensions for definition
    @JsonKey(name: '_definition') PrimitiveElement? definitionElement,

    /// [designation] Additional representations for the concept - other
    /// languages, aliases, specialized purposes, used for particular purposes,
    ///  etc.
    List<CodeSystemDesignation>? designation,

    /// [property] A property value for this concept.
    List<CodeSystemProperty1>? property,

    /// [concept] Defines children of a concept to produce a hierarchy of
    /// concepts. The nature of the relationships is variable
    ///  (is-a/contains/categorizes) - see hierarchyMeaning.
    List<CodeSystemConcept>? concept,
  }) = _CodeSystemConcept;

  @override
  String get fhirType => 'CodeSystemConcept';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CodeSystemConcept.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystemConcept.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CodeSystemConcept.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CodeSystemConcept cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CodeSystemConcept.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemConceptFromJson(json);

  /// Acts like a constructor, returns a [CodeSystemConcept], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CodeSystemConcept.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodeSystemConceptFromJson(json);
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

/// [CodeSystemDesignation] The CodeSystem resource is used to declare the
@freezed

/// [CodeSystemDesignation] The CodeSystem resource is used to declare the
@freezed
class CodeSystemDesignation
    with _$CodeSystemDesignation
    implements BackboneElement {
  /// [CodeSystemDesignation] The CodeSystem resource is used to declare the
  const CodeSystemDesignation._();

  /// [CodeSystemDesignation] The CodeSystem resource is used to declare the
  /// existence of and describe a code system or code system supplement and its
  ///  key properties, and optionally define a part or all of its content.
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
  /// [language] The language this designation is defined for.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [use] A code that details how this designation would be used.
  ///
  /// [value] The text value for this designation.
  ///
  /// [valueElement] Extensions for value
  const factory CodeSystemDesignation({
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

    /// [language] The language this designation is defined for.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [use] A code that details how this designation would be used.
    Coding? use,

    /// [value] The text value for this designation.
    String? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') PrimitiveElement? valueElement,
  }) = _CodeSystemDesignation;

  @override
  String get fhirType => 'CodeSystemDesignation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CodeSystemDesignation.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystemDesignation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CodeSystemDesignation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CodeSystemDesignation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CodeSystemDesignation.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemDesignationFromJson(json);

  /// Acts like a constructor, returns a [CodeSystemDesignation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CodeSystemDesignation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodeSystemDesignationFromJson(json);
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

/// [CodeSystemProperty1] The CodeSystem resource is used to declare the
@freezed

/// [CodeSystemProperty1] The CodeSystem resource is used to declare the
@freezed
class CodeSystemProperty1
    with _$CodeSystemProperty1
    implements BackboneElement {
  /// [CodeSystemProperty1] The CodeSystem resource is used to declare the
  const CodeSystemProperty1._();

  /// [CodeSystemProperty1] The CodeSystem resource is used to declare the
  /// existence of and describe a code system or code system supplement and its
  ///  key properties, and optionally define a part or all of its content.
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
  /// [code] A code that is a reference to CodeSystem.property.code.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [valueCode] The value of this property.
  ///
  /// [valueCodeElement] Extensions for valueCode
  ///
  /// [valueCoding] The value of this property.
  ///
  /// [valueString] The value of this property.
  ///
  /// [valueStringElement] Extensions for valueString
  ///
  /// [valueInteger] The value of this property.
  ///
  /// [valueIntegerElement] Extensions for valueInteger
  ///
  /// [valueBoolean] The value of this property.
  ///
  /// [valueBooleanElement] Extensions for valueBoolean
  ///
  /// [valueDateTime] The value of this property.
  ///
  /// [valueDateTimeElement] Extensions for valueDateTime
  ///
  /// [valueDecimal] The value of this property.
  ///
  /// [valueDecimalElement] Extensions for valueDecimal
  const factory CodeSystemProperty1({
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

    /// [code] A code that is a reference to CodeSystem.property.code.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [valueCode] The value of this property.
    FhirCode? valueCode,

    /// [valueCodeElement] Extensions for valueCode
    @JsonKey(name: '_valueCode') PrimitiveElement? valueCodeElement,

    /// [valueCoding] The value of this property.
    Coding? valueCoding,

    /// [valueString] The value of this property.
    String? valueString,

    /// [valueStringElement] Extensions for valueString
    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,

    /// [valueInteger] The value of this property.
    FhirInteger? valueInteger,

    /// [valueIntegerElement] Extensions for valueInteger
    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,

    /// [valueBoolean] The value of this property.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,

    /// [valueDateTime] The value of this property.
    FhirDateTime? valueDateTime,

    /// [valueDateTimeElement] Extensions for valueDateTime
    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,

    /// [valueDecimal] The value of this property.
    FhirDecimal? valueDecimal,

    /// [valueDecimalElement] Extensions for valueDecimal
    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
  }) = _CodeSystemProperty1;

  @override
  String get fhirType => 'CodeSystemProperty1';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CodeSystemProperty1.fromYaml(dynamic yaml) => yaml is String
      ? CodeSystemProperty1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CodeSystemProperty1.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CodeSystemProperty1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CodeSystemProperty1.fromJson(Map<String, dynamic> json) =>
      _$CodeSystemProperty1FromJson(json);

  /// Acts like a constructor, returns a [CodeSystemProperty1], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CodeSystemProperty1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodeSystemProperty1FromJson(json);
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
