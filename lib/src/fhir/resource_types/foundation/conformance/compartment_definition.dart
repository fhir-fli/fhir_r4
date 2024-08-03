// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'compartment_definition.freezed.dart';
part 'compartment_definition.g.dart';

/// [CompartmentDefinition] A compartment definition that defines how
@freezed
class CompartmentDefinition extends DomainResource
    with _$CompartmentDefinition {
  /// [CompartmentDefinition] A compartment definition that defines how
  CompartmentDefinition._();

  /// [CompartmentDefinition] A compartment definition that defines how
  ///  resources are accessed on a server.
  ///
  /// [resourceType] This is a CompartmentDefinition resource
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
  /// [url] An absolute URI that is used to identify this compartment
  /// definition when it is referenced in a specification, model, design or an
  /// instance; also called its canonical identifier. This SHOULD be globally
  /// unique and SHOULD be a literal address at which at which an authoritative
  /// instance of this compartment definition is (or will be) published. This
  /// URL can be the target of a canonical reference. It SHALL remain the same
  ///  when the compartment definition is stored on different servers.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [version] The identifier that is used to identify this version of the
  /// compartment definition when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the compartment
  /// definition author and is not expected to be globally unique. For example,
  /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
  /// available. There is also no expectation that versions can be placed in a
  ///  lexicographical sequence.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the compartment definition.
  /// This name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [status] The status of this compartment definition. Enables tracking the
  ///  life-cycle of the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [experimental] A Boolean value to indicate that this compartment
  /// definition is authored for testing purposes (or
  /// education/evaluation/marketing) and is not intended to be used for genuine
  ///  usage.
  ///
  /// [experimentalElement] Extensions for experimental
  ///
  /// [date] The date  (and optionally time) when the compartment definition
  /// was published. The date must change when the business version changes and
  /// it must change if the status code changes. In addition, it should change
  ///  when the substantive content of the compartment definition changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  compartment definition.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the compartment
  ///  definition from a consumer's perspective.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate compartment definition instances.
  ///
  /// [purpose] Explanation of why this compartment definition is needed and
  ///  why it has been designed as it has.
  ///
  /// [purposeElement] Extensions for purpose
  ///
  /// [code] Which compartment this definition describes.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [search] Whether the search syntax is supported,.
  ///
  /// [searchElement] Extensions for search
  ///
  /// [resource] Information about how a resource is related to the
  ///  compartment.
  const factory CompartmentDefinition({
    @Default(R4ResourceType.CompartmentDefinition)
    @JsonKey(unknownEnumValue: R4ResourceType.CompartmentDefinition)

    /// [resourceType] This is a CompartmentDefinition resource
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

    /// [url] An absolute URI that is used to identify this compartment
    /// definition when it is referenced in a specification, model, design or an
    /// instance; also called its canonical identifier. This SHOULD be globally
    /// unique and SHOULD be a literal address at which at which an authoritative
    /// instance of this compartment definition is (or will be) published. This
    /// URL can be the target of a canonical reference. It SHALL remain the same
    ///  when the compartment definition is stored on different servers.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [version] The identifier that is used to identify this version of the
    /// compartment definition when it is referenced in a specification, model,
    /// design or instance. This is an arbitrary value managed by the compartment
    /// definition author and is not expected to be globally unique. For example,
    /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
    /// available. There is also no expectation that versions can be placed in a
    ///  lexicographical sequence.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [name] A natural language name identifying the compartment definition.
    /// This name should be usable as an identifier for the module by machine
    ///  processing applications such as code generation.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [status] The status of this compartment definition. Enables tracking the
    ///  life-cycle of the content.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [experimental] A Boolean value to indicate that this compartment
    /// definition is authored for testing purposes (or
    /// education/evaluation/marketing) and is not intended to be used for genuine
    ///  usage.
    FhirBoolean? experimental,

    /// [experimentalElement] Extensions for experimental
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,

    /// [date] The date  (and optionally time) when the compartment definition
    /// was published. The date must change when the business version changes and
    /// it must change if the status code changes. In addition, it should change
    ///  when the substantive content of the compartment definition changes.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [publisher] The name of the organization or individual that published the
    ///  compartment definition.
    String? publisher,

    /// [publisherElement] Extensions for publisher
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the compartment
    ///  definition from a consumer's perspective.
    FhirMarkdown? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    /// supporting the contexts that are listed. These contexts may be general
    /// categories (gender, age, ...) or may be references to specific programs
    /// (insurance plans, studies, ...) and may be used to assist with indexing
    ///  and searching for appropriate compartment definition instances.
    List<UsageContext>? useContext,

    /// [purpose] Explanation of why this compartment definition is needed and
    ///  why it has been designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] Extensions for purpose
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,

    /// [code] Which compartment this definition describes.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [search] Whether the search syntax is supported,.
    FhirBoolean? search,

    /// [searchElement] Extensions for search
    @JsonKey(name: '_search') PrimitiveElement? searchElement,

    /// [resource] Information about how a resource is related to the
    ///  compartment.
    List<CompartmentDefinitionResource>? resource,
  }) = _CompartmentDefinition;

  @override
  String get fhirType => 'CompartmentDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CompartmentDefinition.fromYaml(dynamic yaml) => yaml is String
      ? CompartmentDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CompartmentDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CompartmentDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CompartmentDefinition.fromJson(Map<String, dynamic> json) =>
      _$CompartmentDefinitionFromJson(json);

  /// Acts like a constructor, returns a [CompartmentDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CompartmentDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CompartmentDefinitionFromJson(json);
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

/// [CompartmentDefinitionResource] A compartment definition that defines
@freezed

/// [CompartmentDefinitionResource] A compartment definition that defines
@freezed
class CompartmentDefinitionResource extends BackboneElement
    with _$CompartmentDefinitionResource {
  /// [CompartmentDefinitionResource] A compartment definition that defines
  CompartmentDefinitionResource._();

  /// [CompartmentDefinitionResource] A compartment definition that defines
  ///  how resources are accessed on a server.
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
  /// [code] The name of a resource supported by the server.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [param] The name of a search parameter that represents the link to the
  /// compartment. More than one may be listed because a resource may be linked
  ///  to a compartment in more than one way,.
  ///
  /// [paramElement] Extensions for param
  ///
  /// [documentation] Additional documentation about the resource and
  ///  compartment.
  ///
  /// [documentationElement] Extensions for documentation
  const factory CompartmentDefinitionResource({
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

    /// [code] The name of a resource supported by the server.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [param] The name of a search parameter that represents the link to the
    /// compartment. More than one may be listed because a resource may be linked
    ///  to a compartment in more than one way,.
    List<String>? param,

    /// [paramElement] Extensions for param
    @JsonKey(name: '_param') List<PrimitiveElement>? paramElement,

    /// [documentation] Additional documentation about the resource and
    ///  compartment.
    String? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
  }) = _CompartmentDefinitionResource;

  @override
  String get fhirType => 'CompartmentDefinitionResource';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CompartmentDefinitionResource.fromYaml(dynamic yaml) => yaml is String
      ? CompartmentDefinitionResource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CompartmentDefinitionResource.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CompartmentDefinitionResource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CompartmentDefinitionResource.fromJson(Map<String, dynamic> json) =>
      _$CompartmentDefinitionResourceFromJson(json);

  /// Acts like a constructor, returns a [CompartmentDefinitionResource], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CompartmentDefinitionResource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CompartmentDefinitionResourceFromJson(json);
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
