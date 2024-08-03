// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'concept_map.freezed.dart';
part 'concept_map.g.dart';

/// [ConceptMap] A statement of relationships from one set of concepts to one
@freezed
class ConceptMap extends DomainResource with _$ConceptMap {
  /// [ConceptMap] A statement of relationships from one set of concepts to one
  ConceptMap._();

  /// [ConceptMap] A statement of relationships from one set of concepts to one
  /// or more other concepts - either concepts in code systems, or data
  ///  element/data element concepts, or classes in class models.
  ///
  /// [resourceType] This is a ConceptMap resource
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
  /// [url] An absolute URI that is used to identify this concept map when it
  /// is referenced in a specification, model, design or an instance; also
  /// called its canonical identifier. This SHOULD be globally unique and SHOULD
  /// be a literal address at which at which an authoritative instance of this
  /// concept map is (or will be) published. This URL can be the target of a
  /// canonical reference. It SHALL remain the same when the concept map is
  ///  stored on different servers.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [identifier] A formal identifier that is used to identify this concept
  /// map when it is represented in other formats, or referenced in a
  ///  specification, model, design or an instance.
  ///
  /// [version] The identifier that is used to identify this version of the
  /// concept map when it is referenced in a specification, model, design or
  /// instance. This is an arbitrary value managed by the concept map author and
  /// is not expected to be globally unique. For example, it might be a
  /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
  /// also no expectation that versions can be placed in a lexicographical
  ///  sequence.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the concept map. This name
  /// should be usable as an identifier for the module by machine processing
  ///  applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the concept map.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [status] The status of this concept map. Enables tracking the life-cycle
  ///  of the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this concept map is
  /// authored for testing purposes (or education/evaluation/marketing) and is
  ///  not intended to be used for genuine usage.
  ///
  /// [experimentalElement] Extensions for experimental
  ///
  /// [date] The date  (and optionally time) when the concept map was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the concept map changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  concept map.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the concept map
  ///  from a consumer's perspective.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate concept map instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the concept map is
  ///  intended to be used.
  ///
  /// [purpose] Explanation of why this concept map is needed and why it has
  ///  been designed as it has.
  ///
  /// [purposeElement] Extensions for purpose
  ///
  /// [copyright] A copyright statement relating to the concept map and/or its
  /// contents. Copyright statements are generally legal restrictions on the use
  ///  and publishing of the concept map.
  ///
  /// [copyrightElement] Extensions for copyright
  ///
  /// [sourceUri] Identifier for the source value set that contains the
  ///  concepts that are being mapped and provides context for the mappings.
  ///
  /// [sourceUriElement] Extensions for sourceUri
  ///
  /// [sourceCanonical] Identifier for the source value set that contains the
  ///  concepts that are being mapped and provides context for the mappings.
  ///
  /// [sourceCanonicalElement] Extensions for sourceCanonical
  ///
  /// [targetUri] The target value set provides context for the mappings. Note
  /// that the mapping is made between concepts, not between value sets, but the
  /// value set provides important context about how the concept mapping choices
  ///  are made.
  ///
  /// [targetUriElement] Extensions for targetUri
  ///
  /// [targetCanonical] The target value set provides context for the mappings.
  /// Note that the mapping is made between concepts, not between value sets,
  /// but the value set provides important context about how the concept mapping
  ///  choices are made.
  ///
  /// [targetCanonicalElement] Extensions for targetCanonical
  ///
  /// [group] A group of mappings that all have the same source and target
  ///  system.
  const factory ConceptMap({
    @Default(R4ResourceType.ConceptMap)
    @JsonKey(unknownEnumValue: R4ResourceType.ConceptMap)

    /// [resourceType] This is a ConceptMap resource
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

    /// [url] An absolute URI that is used to identify this concept map when it
    /// is referenced in a specification, model, design or an instance; also
    /// called its canonical identifier. This SHOULD be globally unique and SHOULD
    /// be a literal address at which at which an authoritative instance of this
    /// concept map is (or will be) published. This URL can be the target of a
    /// canonical reference. It SHALL remain the same when the concept map is
    ///  stored on different servers.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [identifier] A formal identifier that is used to identify this concept
    /// map when it is represented in other formats, or referenced in a
    ///  specification, model, design or an instance.
    Identifier? identifier,

    /// [version] The identifier that is used to identify this version of the
    /// concept map when it is referenced in a specification, model, design or
    /// instance. This is an arbitrary value managed by the concept map author and
    /// is not expected to be globally unique. For example, it might be a
    /// timestamp (e.g. yyyymmdd) if a managed version is not available. There is
    /// also no expectation that versions can be placed in a lexicographical
    ///  sequence.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [name] A natural language name identifying the concept map. This name
    /// should be usable as an identifier for the module by machine processing
    ///  applications such as code generation.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [title] A short, descriptive, user-friendly title for the concept map.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [status] The status of this concept map. Enables tracking the life-cycle
    ///  of the content.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [experimental] A Boolean value to indicate that this concept map is
    /// authored for testing purposes (or education/evaluation/marketing) and is
    ///  not intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] Extensions for experimental
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,

    /// [date] The date  (and optionally time) when the concept map was
    /// published. The date must change when the business version changes and it
    /// must change if the status code changes. In addition, it should change when
    ///  the substantive content of the concept map changes.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [publisher] The name of the organization or individual that published the
    ///  concept map.
    String? publisher,

    /// [publisherElement] Extensions for publisher
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the concept map
    ///  from a consumer's perspective.
    FhirMarkdown? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    /// supporting the contexts that are listed. These contexts may be general
    /// categories (gender, age, ...) or may be references to specific programs
    /// (insurance plans, studies, ...) and may be used to assist with indexing
    ///  and searching for appropriate concept map instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the concept map is
    ///  intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this concept map is needed and why it has
    ///  been designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] Extensions for purpose
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,

    /// [copyright] A copyright statement relating to the concept map and/or its
    /// contents. Copyright statements are generally legal restrictions on the use
    ///  and publishing of the concept map.
    FhirMarkdown? copyright,

    /// [copyrightElement] Extensions for copyright
    @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,

    /// [sourceUri] Identifier for the source value set that contains the
    ///  concepts that are being mapped and provides context for the mappings.
    FhirUri? sourceUri,

    /// [sourceUriElement] Extensions for sourceUri
    @JsonKey(name: '_sourceUri') PrimitiveElement? sourceUriElement,

    /// [sourceCanonical] Identifier for the source value set that contains the
    ///  concepts that are being mapped and provides context for the mappings.
    FhirCanonical? sourceCanonical,

    /// [sourceCanonicalElement] Extensions for sourceCanonical
    @JsonKey(name: '_sourceCanonical') PrimitiveElement? sourceCanonicalElement,

    /// [targetUri] The target value set provides context for the mappings. Note
    /// that the mapping is made between concepts, not between value sets, but the
    /// value set provides important context about how the concept mapping choices
    ///  are made.
    FhirUri? targetUri,

    /// [targetUriElement] Extensions for targetUri
    @JsonKey(name: '_targetUri') PrimitiveElement? targetUriElement,

    /// [targetCanonical] The target value set provides context for the mappings.
    /// Note that the mapping is made between concepts, not between value sets,
    /// but the value set provides important context about how the concept mapping
    ///  choices are made.
    FhirCanonical? targetCanonical,

    /// [targetCanonicalElement] Extensions for targetCanonical
    @JsonKey(name: '_targetCanonical') PrimitiveElement? targetCanonicalElement,

    /// [group] A group of mappings that all have the same source and target
    ///  system.
    List<ConceptMapGroup>? group,
  }) = _ConceptMap;

  @override
  String get fhirType => 'ConceptMap';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ConceptMap.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMap.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConceptMap.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConceptMap cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ConceptMap.fromJson(Map<String, dynamic> json) =>
      _$ConceptMapFromJson(json);

  /// Acts like a constructor, returns a [ConceptMap], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ConceptMap.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConceptMapFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

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
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

/// [ConceptMapGroup] A statement of relationships from one set of concepts
@freezed

/// [ConceptMapGroup] A statement of relationships from one set of concepts
@freezed
class ConceptMapGroup extends BackboneElement with _$ConceptMapGroup {
  /// [ConceptMapGroup] A statement of relationships from one set of concepts
  ConceptMapGroup._();

  /// [ConceptMapGroup] A statement of relationships from one set of concepts
  /// to one or more other concepts - either concepts in code systems, or data
  ///  element/data element concepts, or classes in class models.
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
  /// [source] An absolute URI that identifies the source system where the
  ///  concepts to be mapped are defined.
  ///
  /// [sourceElement] Extensions for source
  ///
  /// [sourceVersion] The specific version of the code system, as determined by
  ///  the code system authority.
  ///
  /// [sourceVersionElement] Extensions for sourceVersion
  ///
  /// [target] An absolute URI that identifies the target system that the
  ///  concepts will be mapped to.
  ///
  /// [targetElement] Extensions for target
  ///
  /// [targetVersion] The specific version of the code system, as determined by
  ///  the code system authority.
  ///
  /// [targetVersionElement] Extensions for targetVersion
  ///
  /// [element] Mappings for an individual concept in the source to one or more
  ///  concepts in the target.
  ///
  /// [unmapped] What to do when there is no mapping for the source concept.
  /// "Unmapped" does not include codes that are unmatched, and the unmapped
  /// element is ignored in a code is specified to have equivalence =
  ///  unmatched.
  const factory ConceptMapGroup({
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

    /// [source] An absolute URI that identifies the source system where the
    ///  concepts to be mapped are defined.
    FhirUri? source,

    /// [sourceElement] Extensions for source
    @JsonKey(name: '_source') PrimitiveElement? sourceElement,

    /// [sourceVersion] The specific version of the code system, as determined by
    ///  the code system authority.
    String? sourceVersion,

    /// [sourceVersionElement] Extensions for sourceVersion
    @JsonKey(name: '_sourceVersion') PrimitiveElement? sourceVersionElement,

    /// [target] An absolute URI that identifies the target system that the
    ///  concepts will be mapped to.
    FhirUri? target,

    /// [targetElement] Extensions for target
    @JsonKey(name: '_target') PrimitiveElement? targetElement,

    /// [targetVersion] The specific version of the code system, as determined by
    ///  the code system authority.
    String? targetVersion,

    /// [targetVersionElement] Extensions for targetVersion
    @JsonKey(name: '_targetVersion') PrimitiveElement? targetVersionElement,

    /// [element] Mappings for an individual concept in the source to one or more
    ///  concepts in the target.
    required List<ConceptMapElement> element,

    /// [unmapped] What to do when there is no mapping for the source concept.
    /// "Unmapped" does not include codes that are unmatched, and the unmapped
    /// element is ignored in a code is specified to have equivalence =
    ///  unmatched.
    ConceptMapUnmapped? unmapped,
  }) = _ConceptMapGroup;

  @override
  String get fhirType => 'ConceptMapGroup';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ConceptMapGroup.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapGroup.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConceptMapGroup.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConceptMapGroup cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ConceptMapGroup.fromJson(Map<String, dynamic> json) =>
      _$ConceptMapGroupFromJson(json);

  /// Acts like a constructor, returns a [ConceptMapGroup], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ConceptMapGroup.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConceptMapGroupFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ConceptMapElement] A statement of relationships from one set of
@freezed

/// [ConceptMapElement] A statement of relationships from one set of
@freezed
class ConceptMapElement extends BackboneElement with _$ConceptMapElement {
  /// [ConceptMapElement] A statement of relationships from one set of
  ConceptMapElement._();

  /// [ConceptMapElement] A statement of relationships from one set of
  /// concepts to one or more other concepts - either concepts in code systems,
  ///  or data element/data element concepts, or classes in class models.
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
  /// [code] Identity (code or path) or the element/item being mapped.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  ///
  /// [displayElement] Extensions for display
  ///
  /// [target] A concept from the target value set that this concept maps to.
  const factory ConceptMapElement({
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

    /// [code] Identity (code or path) or the element/item being mapped.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [display] The display for the code. The display is only provided to help
    ///  editors when editing the concept map.
    String? display,

    /// [displayElement] Extensions for display
    @JsonKey(name: '_display') PrimitiveElement? displayElement,

    /// [target] A concept from the target value set that this concept maps to.
    List<ConceptMapTarget>? target,
  }) = _ConceptMapElement;

  @override
  String get fhirType => 'ConceptMapElement';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ConceptMapElement.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapElement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConceptMapElement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConceptMapElement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ConceptMapElement.fromJson(Map<String, dynamic> json) =>
      _$ConceptMapElementFromJson(json);

  /// Acts like a constructor, returns a [ConceptMapElement], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ConceptMapElement.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConceptMapElementFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ConceptMapTarget] A statement of relationships from one set of concepts
@freezed

/// [ConceptMapTarget] A statement of relationships from one set of concepts
@freezed
class ConceptMapTarget extends BackboneElement with _$ConceptMapTarget {
  /// [ConceptMapTarget] A statement of relationships from one set of concepts
  ConceptMapTarget._();

  /// [ConceptMapTarget] A statement of relationships from one set of concepts
  /// to one or more other concepts - either concepts in code systems, or data
  ///  element/data element concepts, or classes in class models.
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
  /// [code] Identity (code or path) or the element/item that the map refers
  ///  to.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  ///
  /// [displayElement] Extensions for display
  ///
  /// [equivalence] The equivalence between the source and target concepts
  /// (counting for the dependencies and products). The equivalence is read from
  ///  target to source (e.g. the target is 'wider' than the source).
  ///
  /// [equivalenceElement] Extensions for equivalence
  ///
  /// [comment] A description of status/issues in mapping that conveys
  ///  additional information not represented in  the structured data.
  ///
  /// [commentElement] Extensions for comment
  ///
  /// [dependsOn] A set of additional dependencies for this mapping to hold.
  /// This mapping is only applicable if the specified element can be resolved,
  ///  and it has the specified value.
  ///
  /// [product] A set of additional outcomes from this mapping to other
  /// elements. To properly execute this mapping, the specified element must be
  /// mapped to some data element or source that is in context. The mapping may
  /// still be useful without a place for the additional data elements, but the
  ///  equivalence cannot be relied on.
  const factory ConceptMapTarget({
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

    /// [code] Identity (code or path) or the element/item that the map refers
    ///  to.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [display] The display for the code. The display is only provided to help
    ///  editors when editing the concept map.
    String? display,

    /// [displayElement] Extensions for display
    @JsonKey(name: '_display') PrimitiveElement? displayElement,

    /// [equivalence] The equivalence between the source and target concepts
    /// (counting for the dependencies and products). The equivalence is read from
    ///  target to source (e.g. the target is 'wider' than the source).
    FhirCode? equivalence,

    /// [equivalenceElement] Extensions for equivalence
    @JsonKey(name: '_equivalence') PrimitiveElement? equivalenceElement,

    /// [comment] A description of status/issues in mapping that conveys
    ///  additional information not represented in  the structured data.
    String? comment,

    /// [commentElement] Extensions for comment
    @JsonKey(name: '_comment') PrimitiveElement? commentElement,

    /// [dependsOn] A set of additional dependencies for this mapping to hold.
    /// This mapping is only applicable if the specified element can be resolved,
    ///  and it has the specified value.
    List<ConceptMapDependsOn>? dependsOn,

    /// [product] A set of additional outcomes from this mapping to other
    /// elements. To properly execute this mapping, the specified element must be
    /// mapped to some data element or source that is in context. The mapping may
    /// still be useful without a place for the additional data elements, but the
    ///  equivalence cannot be relied on.
    List<ConceptMapDependsOn>? product,
  }) = _ConceptMapTarget;

  @override
  String get fhirType => 'ConceptMapTarget';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ConceptMapTarget.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapTarget.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConceptMapTarget.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConceptMapTarget cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ConceptMapTarget.fromJson(Map<String, dynamic> json) =>
      _$ConceptMapTargetFromJson(json);

  /// Acts like a constructor, returns a [ConceptMapTarget], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ConceptMapTarget.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConceptMapTargetFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ConceptMapDependsOn] A statement of relationships from one set of
@freezed

/// [ConceptMapDependsOn] A statement of relationships from one set of
@freezed
class ConceptMapDependsOn extends BackboneElement with _$ConceptMapDependsOn {
  /// [ConceptMapDependsOn] A statement of relationships from one set of
  ConceptMapDependsOn._();

  /// [ConceptMapDependsOn] A statement of relationships from one set of
  /// concepts to one or more other concepts - either concepts in code systems,
  ///  or data element/data element concepts, or classes in class models.
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
  /// [property] A reference to an element that holds a coded value that
  /// corresponds to a code system property. The idea is that the information
  /// model carries an element somewhere that is labeled to correspond with a
  ///  code system property.
  ///
  /// [propertyElement] Extensions for property
  ///
  /// [system] An absolute URI that identifies the code system of the
  /// dependency code (if the source/dependency is a value set that crosses code
  ///  systems).
  ///
  /// [value] Identity (code or path) or the element/item/ValueSet/text that
  ///  the map depends on / refers to.
  ///
  /// [valueElement] Extensions for value
  ///
  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  ///
  /// [displayElement] Extensions for display
  const factory ConceptMapDependsOn({
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

    /// [property] A reference to an element that holds a coded value that
    /// corresponds to a code system property. The idea is that the information
    /// model carries an element somewhere that is labeled to correspond with a
    ///  code system property.
    FhirUri? property,

    /// [propertyElement] Extensions for property
    @JsonKey(name: '_property') PrimitiveElement? propertyElement,

    /// [system] An absolute URI that identifies the code system of the
    /// dependency code (if the source/dependency is a value set that crosses code
    ///  systems).
    FhirCanonical? system,

    /// [value] Identity (code or path) or the element/item/ValueSet/text that
    ///  the map depends on / refers to.
    String? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') PrimitiveElement? valueElement,

    /// [display] The display for the code. The display is only provided to help
    ///  editors when editing the concept map.
    String? display,

    /// [displayElement] Extensions for display
    @JsonKey(name: '_display') PrimitiveElement? displayElement,
  }) = _ConceptMapDependsOn;

  @override
  String get fhirType => 'ConceptMapDependsOn';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ConceptMapDependsOn.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapDependsOn.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConceptMapDependsOn.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConceptMapDependsOn cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ConceptMapDependsOn.fromJson(Map<String, dynamic> json) =>
      _$ConceptMapDependsOnFromJson(json);

  /// Acts like a constructor, returns a [ConceptMapDependsOn], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ConceptMapDependsOn.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConceptMapDependsOnFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [ConceptMapUnmapped] A statement of relationships from one set of
@freezed

/// [ConceptMapUnmapped] A statement of relationships from one set of
@freezed
class ConceptMapUnmapped extends BackboneElement with _$ConceptMapUnmapped {
  /// [ConceptMapUnmapped] A statement of relationships from one set of
  ConceptMapUnmapped._();

  /// [ConceptMapUnmapped] A statement of relationships from one set of
  /// concepts to one or more other concepts - either concepts in code systems,
  ///  or data element/data element concepts, or classes in class models.
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
  /// [mode] Defines which action to take if there is no match for the source
  /// concept in the target system designated for the group. One of 3 actions
  /// are possible: use the unmapped code (this is useful when doing a mapping
  /// between versions, and only a few codes have changed), use a fixed code (a
  /// default code), or alternatively, a reference to a different concept map
  ///  can be provided (by canonical URL).
  ///
  /// [modeElement] Extensions for mode
  ///
  /// [code] The fixed code to use when the mode = 'fixed'  - all unmapped
  ///  codes are mapped to a single fixed code.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [display] The display for the code. The display is only provided to help
  ///  editors when editing the concept map.
  ///
  /// [displayElement] Extensions for display
  ///
  /// [url] The canonical reference to an additional ConceptMap resource
  /// instance to use for mapping if this ConceptMap resource contains no
  ///  matching mapping for the source concept.
  const factory ConceptMapUnmapped({
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

    /// [mode] Defines which action to take if there is no match for the source
    /// concept in the target system designated for the group. One of 3 actions
    /// are possible: use the unmapped code (this is useful when doing a mapping
    /// between versions, and only a few codes have changed), use a fixed code (a
    /// default code), or alternatively, a reference to a different concept map
    ///  can be provided (by canonical URL).
    FhirCode? mode,

    /// [modeElement] Extensions for mode
    @JsonKey(name: '_mode') PrimitiveElement? modeElement,

    /// [code] The fixed code to use when the mode = 'fixed'  - all unmapped
    ///  codes are mapped to a single fixed code.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [display] The display for the code. The display is only provided to help
    ///  editors when editing the concept map.
    String? display,

    /// [displayElement] Extensions for display
    @JsonKey(name: '_display') PrimitiveElement? displayElement,

    /// [url] The canonical reference to an additional ConceptMap resource
    /// instance to use for mapping if this ConceptMap resource contains no
    ///  matching mapping for the source concept.
    FhirCanonical? url,
  }) = _ConceptMapUnmapped;

  @override
  String get fhirType => 'ConceptMapUnmapped';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ConceptMapUnmapped.fromYaml(dynamic yaml) => yaml is String
      ? ConceptMapUnmapped.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ConceptMapUnmapped.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ConceptMapUnmapped cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ConceptMapUnmapped.fromJson(Map<String, dynamic> json) =>
      _$ConceptMapUnmappedFromJson(json);

  /// Acts like a constructor, returns a [ConceptMapUnmapped], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ConceptMapUnmapped.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ConceptMapUnmappedFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
