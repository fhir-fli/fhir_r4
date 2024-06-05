// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'structure_map.freezed.dart';
part 'structure_map.g.dart';

/// [StructureMap] A Map of relationships between 2 structures that can be
@freezed
class StructureMap with _$StructureMap implements DomainResource {
  /// [StructureMap] A Map of relationships between 2 structures that can be
  const StructureMap._();

  /// [StructureMap] A Map of relationships between 2 structures that can be
  ///  used to transform data.
  ///
  /// [resourceType] This is a StructureMap resource
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
  /// [url] An absolute URI that is used to identify this structure map when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// structure map is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the structure map is
  ///  stored on different servers.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this structure
  /// map when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  ///
  /// [version] The identifier that is used to identify this version of the
  /// structure map when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the structure map author
  /// and is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the structure map. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the structure map.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [status] The status of this structure map. Enables tracking the
  ///  life-cycle of the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this structure map is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  ///
  /// [experimentalElement] Extensions for experimental
  ///
  /// [date] The date  (and optionally time) when the structure map was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the structure map changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  structure map.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the structure
  ///  map from a consumer's perspective.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate structure map instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the structure map is
  ///  intended to be used.
  ///
  /// [purpose] Explanation of why this structure map is needed and why it has
  ///  been designed as it has.
  ///
  /// [purposeElement] Extensions for purpose
  ///
  /// [copyright] A copyright statement relating to the structure map and/or
  /// its contents. Copyright statements are generally legal restrictions on the
  ///  use and publishing of the structure map.
  ///
  /// [copyrightElement] Extensions for copyright
  ///
  /// [structure] A structure definition used by this map. The structure
  /// definition may describe instances that are converted, or the instances
  ///  that are produced.
  ///
  /// [import] Other maps used by this map (canonical URLs).
  ///
  /// [group] Organizes the mapping into manageable chunks for human
  ///  review/ease of maintenance.
  const factory StructureMap({
    @Default(R4ResourceType.StructureMap)
    @JsonKey(unknownEnumValue: R4ResourceType.StructureMap)

    /// [resourceType] This is a StructureMap resource
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

    /// [url] An absolute URI that is used to identify this structure map when it
    /// is referenced in a specification, model, design or an instance; also
    /// called its canonical identifier. This SHOULD be globally unique and SHOULD
    /// be a literal address at which at which an authoritative instance of this
    /// structure map is (or will be) published. This URL can be the target of a
    /// canonical reference. It SHALL remain the same when the structure map is
    ///  stored on different servers.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [identifier] A formal identifier that is used to identify this structure
    /// map when it is represented in other formats, or referenced in a
    ///  specification, model, design or an instance.
    List<Identifier>? identifier,

    /// [version] The identifier that is used to identify this version of the
    /// structure map when it is referenced in a specification, model, design or
    /// instance. This is an arbitrary value managed by the structure map author
    /// and is not expected to be globally unique. For example, it might be a
    /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
    /// also no expectation that versions can be placed in a lexicographical
    ///  sequence.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [name] A natural language name identifying the structure map. This name
    /// should be usable as an identifier for the module by machine processing
    ///  applications such as code generation.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [title] A short, descriptive, user-friendly title for the structure map.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [status] The status of this structure map. Enables tracking the
    ///  life-cycle of the content.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [experimental] A Boolean value to indicate that this structure map is
    /// authored for testing purposes (or education/evaluation/marketing) and is
    ///  not intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] Extensions for experimental
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,

    /// [date] The date  (and optionally time) when the structure map was
    /// published. The date must change when the business version changes and it
    /// must change if the status code changes. In addition, it should change when
    ///  the substantive content of the structure map changes.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [publisher] The name of the organization or individual that published the
    ///  structure map.
    String? publisher,

    /// [publisherElement] Extensions for publisher
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the structure
    ///  map from a consumer's perspective.
    FhirMarkdown? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    /// supporting the contexts that are listed. These contexts may be general
    /// categories (gender, age, ...) or may be references to specific programs
    /// (insurance plans, studies, ...) and may be used to assist with indexing
    ///  and searching for appropriate structure map instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the structure map is
    ///  intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this structure map is needed and why it has
    ///  been designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] Extensions for purpose
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,

    /// [copyright] A copyright statement relating to the structure map and/or
    /// its contents. Copyright statements are generally legal restrictions on the
    ///  use and publishing of the structure map.
    FhirMarkdown? copyright,

    /// [copyrightElement] Extensions for copyright
    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,

    /// [structure] A structure definition used by this map. The structure
    /// definition may describe instances that are converted, or the instances
    ///  that are produced.
    List<StructureMapStructure>? structure,

    /// [import] Other maps used by this map (canonical URLs).
    @JsonKey(name: 'import') List<FhirCanonical>? import_,

    /// [group] Organizes the mapping into manageable chunks for human
    ///  review/ease of maintenance.
    required List<StructureMapGroup> group,
  }) = _StructureMap;

  @override
  String get fhirType => 'StructureMap';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory StructureMap.fromYaml(dynamic yaml) => yaml is String
      ? StructureMap.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMap.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMap cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory StructureMap.fromJson(Map<String, dynamic> json) =>
      _$StructureMapFromJson(json);

  /// Acts like a constructor, returns a [StructureMap], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory StructureMap.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMapFromJson(json);
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

/// [StructureMapStructure] A Map of relationships between 2 structures that
@freezed

/// [StructureMapStructure] A Map of relationships between 2 structures that
@freezed
class StructureMapStructure
    with _$StructureMapStructure
    implements BackboneElement {
  /// [StructureMapStructure] A Map of relationships between 2 structures that
  const StructureMapStructure._();

  /// [StructureMapStructure] A Map of relationships between 2 structures that
  ///  can be used to transform data.
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
  /// [url] The canonical reference to the structure.
  ///
  /// [mode] How the referenced structure is used in this mapping.
  ///
  /// [modeElement] Extensions for mode
  ///
  /// [alias] The name used for this type in the map.
  ///
  /// [aliasElement] Extensions for alias
  ///
  /// [documentation] Documentation that describes how the structure is used in
  ///  the mapping.
  ///
  /// [documentationElement] Extensions for documentation
  const factory StructureMapStructure({
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

    /// [url] The canonical reference to the structure.
    required FhirCanonical url,

    /// [mode] How the referenced structure is used in this mapping.
    FhirCode? mode,

    /// [modeElement] Extensions for mode
    @JsonKey(name: '_mode') PrimitiveElement? modeElement,

    /// [alias] The name used for this type in the map.
    String? alias,

    /// [aliasElement] Extensions for alias
    @JsonKey(name: '_alias') PrimitiveElement? aliasElement,

    /// [documentation] Documentation that describes how the structure is used in
    ///  the mapping.
    String? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
  }) = _StructureMapStructure;

  @override
  String get fhirType => 'StructureMapStructure';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory StructureMapStructure.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapStructure.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMapStructure.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMapStructure cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory StructureMapStructure.fromJson(Map<String, dynamic> json) =>
      _$StructureMapStructureFromJson(json);

  /// Acts like a constructor, returns a [StructureMapStructure], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory StructureMapStructure.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMapStructureFromJson(json);
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

/// [StructureMapGroup] A Map of relationships between 2 structures that can
@freezed

/// [StructureMapGroup] A Map of relationships between 2 structures that can
@freezed
class StructureMapGroup with _$StructureMapGroup implements BackboneElement {
  /// [StructureMapGroup] A Map of relationships between 2 structures that can
  const StructureMapGroup._();

  /// [StructureMapGroup] A Map of relationships between 2 structures that can
  ///  be used to transform data.
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
  /// [name] A unique name for the group for the convenience of human readers.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [extends] Another group that this group adds rules to.
  ///
  /// [extendsElement] Extensions for extends
  ///
  /// [typeMode] If this is the default rule set to apply for the source type
  ///  or this combination of types.
  ///
  /// [typeModeElement] Extensions for typeMode
  ///
  /// [documentation] Additional supporting documentation that explains the
  ///  purpose of the group and the types of mappings within it.
  ///
  /// [documentationElement] Extensions for documentation
  ///
  /// [input] A name assigned to an instance of data. The instance must be
  ///  provided when the mapping is invoked.
  ///
  /// [rule] Transform Rule from source to target.
  const factory StructureMapGroup({
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

    /// [name] A unique name for the group for the convenience of human readers.
    FhirId? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [extends] Another group that this group adds rules to.
    @JsonKey(name: 'extends') FhirId? extends_,

    /// [extendsElement] Extensions for extends
    @JsonKey(name: '_extends') PrimitiveElement? extendsElement,

    /// [typeMode] If this is the default rule set to apply for the source type
    ///  or this combination of types.
    FhirCode? typeMode,

    /// [typeModeElement] Extensions for typeMode
    @JsonKey(name: '_typeMode') PrimitiveElement? typeModeElement,

    /// [documentation] Additional supporting documentation that explains the
    ///  purpose of the group and the types of mappings within it.
    String? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,

    /// [input] A name assigned to an instance of data. The instance must be
    ///  provided when the mapping is invoked.
    required List<StructureMapInput> input,

    /// [rule] Transform Rule from source to target.
    required List<StructureMapRule> rule,
  }) = _StructureMapGroup;

  @override
  String get fhirType => 'StructureMapGroup';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory StructureMapGroup.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMapGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMapGroup cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory StructureMapGroup.fromJson(Map<String, dynamic> json) =>
      _$StructureMapGroupFromJson(json);

  /// Acts like a constructor, returns a [StructureMapGroup], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory StructureMapGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMapGroupFromJson(json);
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

/// [StructureMapInput] A Map of relationships between 2 structures that can
@freezed

/// [StructureMapInput] A Map of relationships between 2 structures that can
@freezed
class StructureMapInput with _$StructureMapInput implements BackboneElement {
  /// [StructureMapInput] A Map of relationships between 2 structures that can
  const StructureMapInput._();

  /// [StructureMapInput] A Map of relationships between 2 structures that can
  ///  be used to transform data.
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
  /// [name] Name for this instance of data.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [type] Type for this instance of data.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [mode] Mode for this instance of data.
  ///
  /// [modeElement] Extensions for mode
  ///
  /// [documentation] Documentation for this instance of data.
  ///
  /// [documentationElement] Extensions for documentation
  const factory StructureMapInput({
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

    /// [name] Name for this instance of data.
    FhirId? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [type] Type for this instance of data.
    String? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [mode] Mode for this instance of data.
    FhirCode? mode,

    /// [modeElement] Extensions for mode
    @JsonKey(name: '_mode') PrimitiveElement? modeElement,

    /// [documentation] Documentation for this instance of data.
    String? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
  }) = _StructureMapInput;

  @override
  String get fhirType => 'StructureMapInput';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory StructureMapInput.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapInput.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMapInput.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMapInput cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory StructureMapInput.fromJson(Map<String, dynamic> json) =>
      _$StructureMapInputFromJson(json);

  /// Acts like a constructor, returns a [StructureMapInput], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory StructureMapInput.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMapInputFromJson(json);
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

/// [StructureMapRule] A Map of relationships between 2 structures that can
@freezed

/// [StructureMapRule] A Map of relationships between 2 structures that can
@freezed
class StructureMapRule with _$StructureMapRule implements BackboneElement {
  /// [StructureMapRule] A Map of relationships between 2 structures that can
  const StructureMapRule._();

  /// [StructureMapRule] A Map of relationships between 2 structures that can
  ///  be used to transform data.
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
  /// [name] Name of the rule for internal references.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [source] Source inputs to the mapping.
  ///
  /// [target] Content to create because of this mapping rule.
  ///
  /// [rule] Rules contained in this rule.
  ///
  /// [dependent] Which other rules to apply in the context of this rule.
  ///
  /// [documentation] Documentation for this instance of data.
  ///
  /// [documentationElement] Extensions for documentation
  const factory StructureMapRule({
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

    /// [name] Name of the rule for internal references.
    FhirId? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [source] Source inputs to the mapping.
    required List<StructureMapSource> source,

    /// [target] Content to create because of this mapping rule.
    List<StructureMapTarget>? target,

    /// [rule] Rules contained in this rule.
    List<StructureMapRule>? rule,

    /// [dependent] Which other rules to apply in the context of this rule.
    List<StructureMapDependent>? dependent,

    /// [documentation] Documentation for this instance of data.
    String? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
  }) = _StructureMapRule;

  @override
  String get fhirType => 'StructureMapRule';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory StructureMapRule.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapRule.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMapRule.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMapRule cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory StructureMapRule.fromJson(Map<String, dynamic> json) =>
      _$StructureMapRuleFromJson(json);

  /// Acts like a constructor, returns a [StructureMapRule], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory StructureMapRule.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMapRuleFromJson(json);
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

/// [StructureMapSource] A Map of relationships between 2 structures that
@freezed

/// [StructureMapSource] A Map of relationships between 2 structures that
@freezed
class StructureMapSource with _$StructureMapSource implements BackboneElement {
  /// [StructureMapSource] A Map of relationships between 2 structures that
  const StructureMapSource._();

  /// [StructureMapSource] A Map of relationships between 2 structures that
  ///  can be used to transform data.
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
  /// [context] Type or variable this rule applies to.
  ///
  /// [contextElement] Extensions for context
  ///
  /// [min] Specified minimum cardinality for the element. This is optional; if
  ///  present, it acts an implicit check on the input content.
  ///
  /// [minElement] Extensions for min
  ///
  /// [max] Specified maximum cardinality for the element - a number or a "*".
  /// This is optional; if present, it acts an implicit check on the input
  ///  content (* just serves as documentation; it's the default value).
  ///
  /// [maxElement] Extensions for max
  ///
  /// [type] Specified type for the element. This works as a condition on the
  ///  mapping - use for polymorphic elements.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [defaultValueBase64Binary] A value to use if there is no existing value
  ///  in the source object.
  ///
  /// [defaultValueBase64BinaryElement] Extensions for defaultValueBase64Binary
  ///
  /// [defaultValueBoolean] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueBooleanElement] Extensions for defaultValueBoolean
  ///
  /// [defaultValueCanonical] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueCanonicalElement] Extensions for defaultValueCanonical
  ///
  /// [defaultValueCode] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueCodeElement] Extensions for defaultValueCode
  ///
  /// [defaultValueDate] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueDateElement] Extensions for defaultValueDate
  ///
  /// [defaultValueDateTime] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueDateTimeElement] Extensions for defaultValueDateTime
  ///
  /// [defaultValueDecimal] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueDecimalElement] Extensions for defaultValueDecimal
  ///
  /// [defaultValueId] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueIdElement] Extensions for defaultValueId
  ///
  /// [defaultValueInstant] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueInstantElement] Extensions for defaultValueInstant
  ///
  /// [defaultValueInteger] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueIntegerElement] Extensions for defaultValueInteger
  ///
  /// [defaultValueMarkdown] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueMarkdownElement] Extensions for defaultValueMarkdown
  ///
  /// [defaultValueOid] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueOidElement] Extensions for defaultValueOid
  ///
  /// [defaultValuePositiveInt] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValuePositiveIntElement] Extensions for defaultValuePositiveInt
  ///
  /// [defaultValueString] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueStringElement] Extensions for defaultValueString
  ///
  /// [defaultValueTime] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueTimeElement] Extensions for defaultValueTime
  ///
  /// [defaultValueUnsignedInt] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueUnsignedIntElement] Extensions for defaultValueUnsignedInt
  ///
  /// [defaultValueUri] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueUriElement] Extensions for defaultValueUri
  ///
  /// [defaultValueUrl] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueUrlElement] Extensions for defaultValueUrl
  ///
  /// [defaultValueUuid] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueUuidElement] Extensions for defaultValueUuid
  ///
  /// [defaultValueAddress] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueAge] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueAnnotation] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueAttachment] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueCodeableConcept] A value to use if there is no existing
  ///  value in the source object.
  ///
  /// [defaultValueCoding] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueContactPoint] A value to use if there is no existing value
  ///  in the source object.
  ///
  /// [defaultValueCount] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueDistance] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueDuration] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueHumanName] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueIdentifier] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueMoney] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValuePeriod] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueQuantity] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueRange] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueRatio] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueReference] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueSampledData] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueSignature] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueTiming] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueContactDetail] A value to use if there is no existing value
  ///  in the source object.
  ///
  /// [defaultValueContributor] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueDataRequirement] A value to use if there is no existing
  ///  value in the source object.
  ///
  /// [defaultValueExpression] A value to use if there is no existing value in
  ///  the source object.
  ///
  /// [defaultValueParameterDefinition] A value to use if there is no existing
  ///  value in the source object.
  ///
  /// [defaultValueRelatedArtifact] A value to use if there is no existing
  ///  value in the source object.
  ///
  /// [defaultValueTriggerDefinition] A value to use if there is no existing
  ///  value in the source object.
  ///
  /// [defaultValueUsageContext] A value to use if there is no existing value
  ///  in the source object.
  ///
  /// [defaultValueDosage] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [defaultValueMeta] A value to use if there is no existing value in the
  ///  source object.
  ///
  /// [element] Optional field for this source.
  ///
  /// [elementElement] Extensions for element
  ///
  /// [listMode] How to handle the list mode for this element.
  ///
  /// [listModeElement] Extensions for listMode
  ///
  /// [variable] Named context for field, if a field is specified.
  ///
  /// [variableElement] Extensions for variable
  ///
  /// [condition] FHIRPath expression  - must be true or the rule does not
  ///  apply.
  ///
  /// [conditionElement] Extensions for condition
  ///
  /// [check] FHIRPath expression  - must be true or the mapping engine throws
  ///  an error instead of completing.
  ///
  /// [checkElement] Extensions for check
  ///
  /// [logMessage] A FHIRPath expression which specifies a message to put in
  ///  the transform log when content matching the source rule is found.
  ///
  /// [logMessageElement] Extensions for logMessage
  const factory StructureMapSource({
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

    /// [context] Type or variable this rule applies to.
    FhirId? context,

    /// [contextElement] Extensions for context
    @JsonKey(name: '_context') PrimitiveElement? contextElement,

    /// [min] Specified minimum cardinality for the element. This is optional; if
    ///  present, it acts an implicit check on the input content.
    FhirInteger? min,

    /// [minElement] Extensions for min
    @JsonKey(name: '_min') PrimitiveElement? minElement,

    /// [max] Specified maximum cardinality for the element - a number or a "*".
    /// This is optional; if present, it acts an implicit check on the input
    ///  content (* just serves as documentation; it's the default value).
    String? max,

    /// [maxElement] Extensions for max
    @JsonKey(name: '_max') PrimitiveElement? maxElement,

    /// [type] Specified type for the element. This works as a condition on the
    ///  mapping - use for polymorphic elements.
    String? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [defaultValueBase64Binary] A value to use if there is no existing value
    ///  in the source object.
    FhirBase64Binary? defaultValueBase64Binary,
    @JsonKey(name: '_defaultValueBase64Binary')

    /// [defaultValueBase64BinaryElement] Extensions for defaultValueBase64Binary
    PrimitiveElement? defaultValueBase64BinaryElement,

    /// [defaultValueBoolean] A value to use if there is no existing value in the
    ///  source object.
    FhirBoolean? defaultValueBoolean,

    /// [defaultValueBooleanElement] Extensions for defaultValueBoolean
    @JsonKey(name: '_defaultValueBoolean')
    PrimitiveElement? defaultValueBooleanElement,

    /// [defaultValueCanonical] A value to use if there is no existing value in
    ///  the source object.
    FhirCanonical? defaultValueCanonical,
    @JsonKey(name: '_defaultValueCanonical')

    /// [defaultValueCanonicalElement] Extensions for defaultValueCanonical
    PrimitiveElement? defaultValueCanonicalElement,

    /// [defaultValueCode] A value to use if there is no existing value in the
    ///  source object.
    FhirCode? defaultValueCode,

    /// [defaultValueCodeElement] Extensions for defaultValueCode
    @JsonKey(name: '_defaultValueCode')
    PrimitiveElement? defaultValueCodeElement,

    /// [defaultValueDate] A value to use if there is no existing value in the
    ///  source object.
    FhirDate? defaultValueDate,

    /// [defaultValueDateElement] Extensions for defaultValueDate
    @JsonKey(name: '_defaultValueDate')
    PrimitiveElement? defaultValueDateElement,

    /// [defaultValueDateTime] A value to use if there is no existing value in
    ///  the source object.
    FhirDateTime? defaultValueDateTime,
    @JsonKey(name: '_defaultValueDateTime')

    /// [defaultValueDateTimeElement] Extensions for defaultValueDateTime
    PrimitiveElement? defaultValueDateTimeElement,

    /// [defaultValueDecimal] A value to use if there is no existing value in the
    ///  source object.
    FhirDecimal? defaultValueDecimal,

    /// [defaultValueDecimalElement] Extensions for defaultValueDecimal
    @JsonKey(name: '_defaultValueDecimal')
    PrimitiveElement? defaultValueDecimalElement,

    /// [defaultValueId] A value to use if there is no existing value in the
    ///  source object.
    FhirId? defaultValueId,

    /// [defaultValueIdElement] Extensions for defaultValueId
    @JsonKey(name: '_defaultValueId') PrimitiveElement? defaultValueIdElement,

    /// [defaultValueInstant] A value to use if there is no existing value in the
    ///  source object.
    FhirInstant? defaultValueInstant,

    /// [defaultValueInstantElement] Extensions for defaultValueInstant
    @JsonKey(name: '_defaultValueInstant')
    PrimitiveElement? defaultValueInstantElement,

    /// [defaultValueInteger] A value to use if there is no existing value in the
    ///  source object.
    FhirInteger? defaultValueInteger,

    /// [defaultValueIntegerElement] Extensions for defaultValueInteger
    @JsonKey(name: '_defaultValueInteger')
    PrimitiveElement? defaultValueIntegerElement,

    /// [defaultValueMarkdown] A value to use if there is no existing value in
    ///  the source object.
    FhirMarkdown? defaultValueMarkdown,
    @JsonKey(name: '_defaultValueMarkdown')

    /// [defaultValueMarkdownElement] Extensions for defaultValueMarkdown
    PrimitiveElement? defaultValueMarkdownElement,

    /// [defaultValueOid] A value to use if there is no existing value in the
    ///  source object.
    FhirOid? defaultValueOid,

    /// [defaultValueOidElement] Extensions for defaultValueOid
    @JsonKey(name: '_defaultValueOid') PrimitiveElement? defaultValueOidElement,

    /// [defaultValuePositiveInt] A value to use if there is no existing value in
    ///  the source object.
    FhirPositiveInt? defaultValuePositiveInt,
    @JsonKey(name: '_defaultValuePositiveInt')

    /// [defaultValuePositiveIntElement] Extensions for defaultValuePositiveInt
    PrimitiveElement? defaultValuePositiveIntElement,

    /// [defaultValueString] A value to use if there is no existing value in the
    ///  source object.
    String? defaultValueString,

    /// [defaultValueStringElement] Extensions for defaultValueString
    @JsonKey(name: '_defaultValueString')
    PrimitiveElement? defaultValueStringElement,

    /// [defaultValueTime] A value to use if there is no existing value in the
    ///  source object.
    FhirTime? defaultValueTime,

    /// [defaultValueTimeElement] Extensions for defaultValueTime
    @JsonKey(name: '_defaultValueTime')
    PrimitiveElement? defaultValueTimeElement,

    /// [defaultValueUnsignedInt] A value to use if there is no existing value in
    ///  the source object.
    FhirUnsignedInt? defaultValueUnsignedInt,
    @JsonKey(name: '_defaultValueUnsignedInt')

    /// [defaultValueUnsignedIntElement] Extensions for defaultValueUnsignedInt
    PrimitiveElement? defaultValueUnsignedIntElement,

    /// [defaultValueUri] A value to use if there is no existing value in the
    ///  source object.
    FhirUri? defaultValueUri,

    /// [defaultValueUriElement] Extensions for defaultValueUri
    @JsonKey(name: '_defaultValueUri') PrimitiveElement? defaultValueUriElement,

    /// [defaultValueUrl] A value to use if there is no existing value in the
    ///  source object.
    FhirUrl? defaultValueUrl,

    /// [defaultValueUrlElement] Extensions for defaultValueUrl
    @JsonKey(name: '_defaultValueUrl') PrimitiveElement? defaultValueUrlElement,

    /// [defaultValueUuid] A value to use if there is no existing value in the
    ///  source object.
    FhirUuid? defaultValueUuid,

    /// [defaultValueUuidElement] Extensions for defaultValueUuid
    @JsonKey(name: '_defaultValueUuid')
    PrimitiveElement? defaultValueUuidElement,

    /// [defaultValueAddress] A value to use if there is no existing value in the
    ///  source object.
    Address? defaultValueAddress,

    /// [defaultValueAge] A value to use if there is no existing value in the
    ///  source object.
    Age? defaultValueAge,

    /// [defaultValueAnnotation] A value to use if there is no existing value in
    ///  the source object.
    Annotation? defaultValueAnnotation,

    /// [defaultValueAttachment] A value to use if there is no existing value in
    ///  the source object.
    Attachment? defaultValueAttachment,

    /// [defaultValueCodeableConcept] A value to use if there is no existing
    ///  value in the source object.
    CodeableConcept? defaultValueCodeableConcept,

    /// [defaultValueCoding] A value to use if there is no existing value in the
    ///  source object.
    Coding? defaultValueCoding,

    /// [defaultValueContactPoint] A value to use if there is no existing value
    ///  in the source object.
    ContactPoint? defaultValueContactPoint,

    /// [defaultValueCount] A value to use if there is no existing value in the
    ///  source object.
    Count? defaultValueCount,

    /// [defaultValueDistance] A value to use if there is no existing value in
    ///  the source object.
    Distance? defaultValueDistance,

    /// [defaultValueDuration] A value to use if there is no existing value in
    ///  the source object.
    FhirDuration? defaultValueDuration,

    /// [defaultValueHumanName] A value to use if there is no existing value in
    ///  the source object.
    HumanName? defaultValueHumanName,

    /// [defaultValueIdentifier] A value to use if there is no existing value in
    ///  the source object.
    Identifier? defaultValueIdentifier,

    /// [defaultValueMoney] A value to use if there is no existing value in the
    ///  source object.
    Money? defaultValueMoney,

    /// [defaultValuePeriod] A value to use if there is no existing value in the
    ///  source object.
    Period? defaultValuePeriod,

    /// [defaultValueQuantity] A value to use if there is no existing value in
    ///  the source object.
    Quantity? defaultValueQuantity,

    /// [defaultValueRange] A value to use if there is no existing value in the
    ///  source object.
    Range? defaultValueRange,

    /// [defaultValueRatio] A value to use if there is no existing value in the
    ///  source object.
    Ratio? defaultValueRatio,

    /// [defaultValueReference] A value to use if there is no existing value in
    ///  the source object.
    Reference? defaultValueReference,

    /// [defaultValueSampledData] A value to use if there is no existing value in
    ///  the source object.
    SampledData? defaultValueSampledData,

    /// [defaultValueSignature] A value to use if there is no existing value in
    ///  the source object.
    Signature? defaultValueSignature,

    /// [defaultValueTiming] A value to use if there is no existing value in the
    ///  source object.
    Timing? defaultValueTiming,

    /// [defaultValueContactDetail] A value to use if there is no existing value
    ///  in the source object.
    ContactDetail? defaultValueContactDetail,

    /// [defaultValueContributor] A value to use if there is no existing value in
    ///  the source object.
    Contributor? defaultValueContributor,

    /// [defaultValueDataRequirement] A value to use if there is no existing
    ///  value in the source object.
    DataRequirement? defaultValueDataRequirement,

    /// [defaultValueExpression] A value to use if there is no existing value in
    ///  the source object.
    FhirExpression? defaultValueExpression,

    /// [defaultValueParameterDefinition] A value to use if there is no existing
    ///  value in the source object.
    ParameterDefinition? defaultValueParameterDefinition,

    /// [defaultValueRelatedArtifact] A value to use if there is no existing
    ///  value in the source object.
    RelatedArtifact? defaultValueRelatedArtifact,

    /// [defaultValueTriggerDefinition] A value to use if there is no existing
    ///  value in the source object.
    TriggerDefinition? defaultValueTriggerDefinition,

    /// [defaultValueUsageContext] A value to use if there is no existing value
    ///  in the source object.
    UsageContext? defaultValueUsageContext,

    /// [defaultValueDosage] A value to use if there is no existing value in the
    ///  source object.
    Dosage? defaultValueDosage,

    /// [defaultValueMeta] A value to use if there is no existing value in the
    ///  source object.
    FhirMeta? defaultValueMeta,

    /// [element] Optional field for this source.
    String? element,

    /// [elementElement] Extensions for element
    @JsonKey(name: '_element') PrimitiveElement? elementElement,

    /// [listMode] How to handle the list mode for this element.
    FhirCode? listMode,

    /// [listModeElement] Extensions for listMode
    @JsonKey(name: '_listMode') PrimitiveElement? listModeElement,

    /// [variable] Named context for field, if a field is specified.
    FhirId? variable,

    /// [variableElement] Extensions for variable
    @JsonKey(name: '_variable') PrimitiveElement? variableElement,

    /// [condition] FHIRPath expression  - must be true or the rule does not
    ///  apply.
    String? condition,

    /// [conditionElement] Extensions for condition
    @JsonKey(name: '_condition') PrimitiveElement? conditionElement,

    /// [check] FHIRPath expression  - must be true or the mapping engine throws
    ///  an error instead of completing.
    String? check,

    /// [checkElement] Extensions for check
    @JsonKey(name: '_check') PrimitiveElement? checkElement,

    /// [logMessage] A FHIRPath expression which specifies a message to put in
    ///  the transform log when content matching the source rule is found.
    String? logMessage,

    /// [logMessageElement] Extensions for logMessage
    @JsonKey(name: '_logMessage') PrimitiveElement? logMessageElement,
  }) = _StructureMapSource;

  @override
  String get fhirType => 'StructureMapSource';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory StructureMapSource.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapSource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMapSource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMapSource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory StructureMapSource.fromJson(Map<String, dynamic> json) =>
      _$StructureMapSourceFromJson(json);

  /// Acts like a constructor, returns a [StructureMapSource], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory StructureMapSource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMapSourceFromJson(json);
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

/// [StructureMapTarget] A Map of relationships between 2 structures that
@freezed

/// [StructureMapTarget] A Map of relationships between 2 structures that
@freezed
class StructureMapTarget with _$StructureMapTarget implements BackboneElement {
  /// [StructureMapTarget] A Map of relationships between 2 structures that
  const StructureMapTarget._();

  /// [StructureMapTarget] A Map of relationships between 2 structures that
  ///  can be used to transform data.
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
  /// [context] Type or variable this rule applies to.
  ///
  /// [contextElement] Extensions for context
  ///
  /// [contextType] How to interpret the context.
  ///
  /// [contextTypeElement] Extensions for contextType
  ///
  /// [element] Field to create in the context.
  ///
  /// [elementElement] Extensions for element
  ///
  /// [variable] Named context for field, if desired, and a field is specified.
  ///
  /// [variableElement] Extensions for variable
  ///
  /// [listMode] If field is a list, how to manage the list.
  ///
  /// [listModeElement] Extensions for listMode
  ///
  /// [listRuleId] Internal rule reference for shared list items.
  ///
  /// [listRuleIdElement] Extensions for listRuleId
  ///
  /// [transform] How the data is copied / created.
  ///
  /// [transformElement] Extensions for transform
  ///
  /// [parameter] Parameters to the transform.
  const factory StructureMapTarget({
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

    /// [context] Type or variable this rule applies to.
    FhirId? context,

    /// [contextElement] Extensions for context
    @JsonKey(name: '_context') PrimitiveElement? contextElement,

    /// [contextType] How to interpret the context.
    FhirCode? contextType,

    /// [contextTypeElement] Extensions for contextType
    @JsonKey(name: '_contextType') PrimitiveElement? contextTypeElement,

    /// [element] Field to create in the context.
    String? element,

    /// [elementElement] Extensions for element
    @JsonKey(name: '_element') PrimitiveElement? elementElement,

    /// [variable] Named context for field, if desired, and a field is specified.
    FhirId? variable,

    /// [variableElement] Extensions for variable
    @JsonKey(name: '_variable') PrimitiveElement? variableElement,

    /// [listMode] If field is a list, how to manage the list.
    List<FhirCode>? listMode,

    /// [listModeElement] Extensions for listMode
    @JsonKey(name: '_listMode') List<Element?>? listModeElement,

    /// [listRuleId] Internal rule reference for shared list items.
    FhirId? listRuleId,

    /// [listRuleIdElement] Extensions for listRuleId
    @JsonKey(name: '_listRuleId') PrimitiveElement? listRuleIdElement,

    /// [transform] How the data is copied / created.
    FhirCode? transform,

    /// [transformElement] Extensions for transform
    @JsonKey(name: '_transform') PrimitiveElement? transformElement,

    /// [parameter] Parameters to the transform.
    List<StructureMapParameter>? parameter,
  }) = _StructureMapTarget;

  @override
  String get fhirType => 'StructureMapTarget';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory StructureMapTarget.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapTarget.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMapTarget.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMapTarget cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory StructureMapTarget.fromJson(Map<String, dynamic> json) =>
      _$StructureMapTargetFromJson(json);

  /// Acts like a constructor, returns a [StructureMapTarget], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory StructureMapTarget.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMapTargetFromJson(json);
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

/// [StructureMapParameter] A Map of relationships between 2 structures that
@freezed

/// [StructureMapParameter] A Map of relationships between 2 structures that
@freezed
class StructureMapParameter
    with _$StructureMapParameter
    implements BackboneElement {
  /// [StructureMapParameter] A Map of relationships between 2 structures that
  const StructureMapParameter._();

  /// [StructureMapParameter] A Map of relationships between 2 structures that
  ///  can be used to transform data.
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
  /// [valueId] Parameter value - variable or literal.
  ///
  /// [valueIdElement] Extensions for valueId
  ///
  /// [valueString] Parameter value - variable or literal.
  ///
  /// [valueStringElement] Extensions for valueString
  ///
  /// [valueBoolean] Parameter value - variable or literal.
  ///
  /// [valueBooleanElement] Extensions for valueBoolean
  ///
  /// [valueInteger] Parameter value - variable or literal.
  ///
  /// [valueIntegerElement] Extensions for valueInteger
  ///
  /// [valueDecimal] Parameter value - variable or literal.
  ///
  /// [valueDecimalElement] Extensions for valueDecimal
  const factory StructureMapParameter({
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

    /// [valueId] Parameter value - variable or literal.
    FhirId? valueId,

    /// [valueIdElement] Extensions for valueId
    @JsonKey(name: '_valueId') PrimitiveElement? valueIdElement,

    /// [valueString] Parameter value - variable or literal.
    String? valueString,

    /// [valueStringElement] Extensions for valueString
    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,

    /// [valueBoolean] Parameter value - variable or literal.
    FhirBoolean? valueBoolean,

    /// [valueBooleanElement] Extensions for valueBoolean
    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,

    /// [valueInteger] Parameter value - variable or literal.
    FhirInteger? valueInteger,

    /// [valueIntegerElement] Extensions for valueInteger
    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,

    /// [valueDecimal] Parameter value - variable or literal.
    FhirDecimal? valueDecimal,

    /// [valueDecimalElement] Extensions for valueDecimal
    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
  }) = _StructureMapParameter;

  @override
  String get fhirType => 'StructureMapParameter';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory StructureMapParameter.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMapParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMapParameter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory StructureMapParameter.fromJson(Map<String, dynamic> json) =>
      _$StructureMapParameterFromJson(json);

  /// Acts like a constructor, returns a [StructureMapParameter], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory StructureMapParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMapParameterFromJson(json);
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

/// [StructureMapDependent] A Map of relationships between 2 structures that
@freezed

/// [StructureMapDependent] A Map of relationships between 2 structures that
@freezed
class StructureMapDependent
    with _$StructureMapDependent
    implements BackboneElement {
  /// [StructureMapDependent] A Map of relationships between 2 structures that
  const StructureMapDependent._();

  /// [StructureMapDependent] A Map of relationships between 2 structures that
  ///  can be used to transform data.
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
  /// [name] Name of a rule or group to apply.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [variable] Variable to pass to the rule or group.
  ///
  /// [variableElement] Extensions for variable
  const factory StructureMapDependent({
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

    /// [name] Name of a rule or group to apply.
    FhirId? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [variable] Variable to pass to the rule or group.
    List<String>? variable,

    /// [variableElement] Extensions for variable
    @JsonKey(name: '_variable') List<Element?>? variableElement,
  }) = _StructureMapDependent;

  @override
  String get fhirType => 'StructureMapDependent';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory StructureMapDependent.fromYaml(dynamic yaml) => yaml is String
      ? StructureMapDependent.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? StructureMapDependent.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'StructureMapDependent cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory StructureMapDependent.fromJson(Map<String, dynamic> json) =>
      _$StructureMapDependentFromJson(json);

  /// Acts like a constructor, returns a [StructureMapDependent], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory StructureMapDependent.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$StructureMapDependentFromJson(json);
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
