// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'operation_definition.freezed.dart';
part 'operation_definition.g.dart';

/// [OperationDefinition] A formal computable definition of an operation (on
@freezed
class OperationDefinition extends DomainResource with _$OperationDefinition {
  /// [OperationDefinition] A formal computable definition of an operation (on
  OperationDefinition._();

  /// [OperationDefinition] A formal computable definition of an operation (on
  ///  the RESTful interface) or a named query (using the search interaction).
  ///
  /// [resourceType] This is a OperationDefinition resource
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
  /// [url] An absolute URI that is used to identify this operation definition
  /// when it is referenced in a specification, model, design or an instance;
  /// also called its canonical identifier. This SHOULD be globally unique and
  /// SHOULD be a literal address at which at which an authoritative instance of
  /// this operation definition is (or will be) published. This URL can be the
  /// target of a canonical reference. It SHALL remain the same when the
  ///  operation definition is stored on different servers.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [version] The identifier that is used to identify this version of the
  /// operation definition when it is referenced in a specification, model,
  /// design or instance. This is an arbitrary value managed by the operation
  /// definition author and is not expected to be globally unique. For example,
  /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
  /// available. There is also no expectation that versions can be placed in a
  ///  lexicographical sequence.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [name] A natural language name identifying the operation definition. This
  /// name should be usable as an identifier for the module by machine
  ///  processing applications such as code generation.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [title] A short, descriptive, user-friendly title for the operation
  ///  definition.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [status] The status of this operation definition. Enables tracking the
  ///  life-cycle of the content.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [kind] Whether this is an operation or a named query.
  ///
  /// [kindElement] Extensions for kind
  ///
  /// [experimental] A Boolean value to indicate that this operation definition
  /// is authored for testing purposes (or education/evaluation/marketing) and
  ///  is not intended to be used for genuine usage.
  ///
  /// [experimentalElement] Extensions for experimental
  ///
  /// [date] The date  (and optionally time) when the operation definition was
  /// published. The date must change when the business version changes and it
  /// must change if the status code changes. In addition, it should change when
  ///  the substantive content of the operation definition changes.
  ///
  /// [dateElement] Extensions for date
  ///
  /// [publisher] The name of the organization or individual that published the
  ///  operation definition.
  ///
  /// [publisherElement] Extensions for publisher
  ///
  /// [contact] Contact details to assist a user in finding and communicating
  ///  with the publisher.
  ///
  /// [description] A free text natural language description of the operation
  ///  definition from a consumer's perspective.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [useContext] The content was developed with a focus and intent of
  /// supporting the contexts that are listed. These contexts may be general
  /// categories (gender, age, ...) or may be references to specific programs
  /// (insurance plans, studies, ...) and may be used to assist with indexing
  ///  and searching for appropriate operation definition instances.
  ///
  /// [jurisdiction] A legal or geographic region in which the operation
  ///  definition is intended to be used.
  ///
  /// [purpose] Explanation of why this operation definition is needed and why
  ///  it has been designed as it has.
  ///
  /// [purposeElement] Extensions for purpose
  ///
  /// [affectsState] Whether the operation affects state. Side effects such as
  ///  producing audit trail entries do not count as 'affecting  state'.
  ///
  /// [affectsStateElement] Extensions for affectsState
  ///
  /// [code] The name used to invoke the operation.
  ///
  /// [codeElement] Extensions for code
  ///
  /// [comment] Additional information about how to use this operation or named
  ///  query.
  ///
  /// [commentElement] Extensions for comment
  ///
  /// [base] Indicates that this operation definition is a constraining profile
  ///  on the base.
  ///
  /// [resource] The types on which this operation can be executed.
  ///
  /// [resourceElement] Extensions for resource
  ///
  /// [system] Indicates whether this operation or named query can be invoked
  /// at the system level (e.g. without needing to choose a resource type for
  ///  the context).
  ///
  /// [systemElement] Extensions for system
  ///
  /// [type] Indicates whether this operation or named query can be invoked at
  /// the resource type level for any given resource type level (e.g. without
  ///  needing to choose a specific resource id for the context).
  ///
  /// [typeElement] Extensions for type
  ///
  /// [instance] Indicates whether this operation can be invoked on a
  ///  particular instance of one of the given types.
  ///
  /// [instanceElement] Extensions for instance
  ///
  /// [inputProfile] Additional validation information for the in parameters -
  /// a single profile that covers all the parameters. The profile is a
  ///  constraint on the parameters resource as a whole.
  ///
  /// [outputProfile] Additional validation information for the out parameters
  /// - a single profile that covers all the parameters. The profile is a
  ///  constraint on the parameters resource.
  ///
  /// [parameter] The parameters for the operation/query.
  ///
  /// [overload] Defines an appropriate combination of parameters to use when
  /// invoking this operation, to help code generators when generating
  ///  overloaded parameter sets for this operation.
  factory OperationDefinition({
    @Default(R4ResourceType.OperationDefinition)
    @JsonKey(unknownEnumValue: R4ResourceType.OperationDefinition)

    /// [resourceType] This is a OperationDefinition resource
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

    /// [url] An absolute URI that is used to identify this operation definition
    /// when it is referenced in a specification, model, design or an instance;
    /// also called its canonical identifier. This SHOULD be globally unique and
    /// SHOULD be a literal address at which at which an authoritative instance of
    /// this operation definition is (or will be) published. This URL can be the
    /// target of a canonical reference. It SHALL remain the same when the
    ///  operation definition is stored on different servers.
    FhirUri? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') PrimitiveElement? urlElement,

    /// [version] The identifier that is used to identify this version of the
    /// operation definition when it is referenced in a specification, model,
    /// design or instance. This is an arbitrary value managed by the operation
    /// definition author and is not expected to be globally unique. For example,
    /// it might be a timestamp (e.g. yyyymmdd) if a managed version is not
    /// available. There is also no expectation that versions can be placed in a
    ///  lexicographical sequence.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') PrimitiveElement? versionElement,

    /// [name] A natural language name identifying the operation definition. This
    /// name should be usable as an identifier for the module by machine
    ///  processing applications such as code generation.
    String? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [title] A short, descriptive, user-friendly title for the operation
    ///  definition.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') PrimitiveElement? titleElement,

    /// [status] The status of this operation definition. Enables tracking the
    ///  life-cycle of the content.
    FhirCode? status,

    /// [statusElement] Extensions for status
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [kind] Whether this is an operation or a named query.
    FhirCode? kind,

    /// [kindElement] Extensions for kind
    @JsonKey(name: '_kind') PrimitiveElement? kindElement,

    /// [experimental] A Boolean value to indicate that this operation definition
    /// is authored for testing purposes (or education/evaluation/marketing) and
    ///  is not intended to be used for genuine usage.
    FhirBoolean? experimental,

    /// [experimentalElement] Extensions for experimental
    @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,

    /// [date] The date  (and optionally time) when the operation definition was
    /// published. The date must change when the business version changes and it
    /// must change if the status code changes. In addition, it should change when
    ///  the substantive content of the operation definition changes.
    FhirDateTime? date,

    /// [dateElement] Extensions for date
    @JsonKey(name: '_date') PrimitiveElement? dateElement,

    /// [publisher] The name of the organization or individual that published the
    ///  operation definition.
    String? publisher,

    /// [publisherElement] Extensions for publisher
    @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,

    /// [contact] Contact details to assist a user in finding and communicating
    ///  with the publisher.
    List<ContactDetail>? contact,

    /// [description] A free text natural language description of the operation
    ///  definition from a consumer's perspective.
    FhirMarkdown? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [useContext] The content was developed with a focus and intent of
    /// supporting the contexts that are listed. These contexts may be general
    /// categories (gender, age, ...) or may be references to specific programs
    /// (insurance plans, studies, ...) and may be used to assist with indexing
    ///  and searching for appropriate operation definition instances.
    List<UsageContext>? useContext,

    /// [jurisdiction] A legal or geographic region in which the operation
    ///  definition is intended to be used.
    List<CodeableConcept>? jurisdiction,

    /// [purpose] Explanation of why this operation definition is needed and why
    ///  it has been designed as it has.
    FhirMarkdown? purpose,

    /// [purposeElement] Extensions for purpose
    @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,

    /// [affectsState] Whether the operation affects state. Side effects such as
    ///  producing audit trail entries do not count as 'affecting  state'.
    FhirBoolean? affectsState,

    /// [affectsStateElement] Extensions for affectsState
    @JsonKey(name: '_affectsState') PrimitiveElement? affectsStateElement,

    /// [code] The name used to invoke the operation.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') PrimitiveElement? codeElement,

    /// [comment] Additional information about how to use this operation or named
    ///  query.
    FhirMarkdown? comment,

    /// [commentElement] Extensions for comment
    @JsonKey(name: '_comment') PrimitiveElement? commentElement,

    /// [base] Indicates that this operation definition is a constraining profile
    ///  on the base.
    FhirCanonical? base,

    /// [resource] The types on which this operation can be executed.
    List<FhirCode>? resource,

    /// [resourceElement] Extensions for resource
    @JsonKey(name: '_resource') List<PrimitiveElement>? resourceElement,

    /// [system] Indicates whether this operation or named query can be invoked
    /// at the system level (e.g. without needing to choose a resource type for
    ///  the context).
    FhirBoolean? system,

    /// [systemElement] Extensions for system
    @JsonKey(name: '_system') PrimitiveElement? systemElement,

    /// [type] Indicates whether this operation or named query can be invoked at
    /// the resource type level for any given resource type level (e.g. without
    ///  needing to choose a specific resource id for the context).
    FhirBoolean? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [instance] Indicates whether this operation can be invoked on a
    ///  particular instance of one of the given types.
    FhirBoolean? instance,

    /// [instanceElement] Extensions for instance
    @JsonKey(name: '_instance') PrimitiveElement? instanceElement,

    /// [inputProfile] Additional validation information for the in parameters -
    /// a single profile that covers all the parameters. The profile is a
    ///  constraint on the parameters resource as a whole.
    FhirCanonical? inputProfile,

    /// [outputProfile] Additional validation information for the out parameters
    /// - a single profile that covers all the parameters. The profile is a
    ///  constraint on the parameters resource.
    FhirCanonical? outputProfile,

    /// [parameter] The parameters for the operation/query.
    List<OperationDefinitionParameter>? parameter,

    /// [overload] Defines an appropriate combination of parameters to use when
    /// invoking this operation, to help code generators when generating
    ///  overloaded parameter sets for this operation.
    List<OperationDefinitionOverload>? overload,
  }) = _OperationDefinition;

  @override
  String get fhirType => 'OperationDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory OperationDefinition.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? OperationDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'OperationDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory OperationDefinition.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinitionFromJson(json);

  /// Acts like a constructor, returns a [OperationDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory OperationDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$OperationDefinitionFromJson(json);
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

/// [OperationDefinitionParameter] A formal computable definition of an
@freezed

/// [OperationDefinitionParameter] A formal computable definition of an
@freezed
class OperationDefinitionParameter extends BackboneElement
    with _$OperationDefinitionParameter {
  /// [OperationDefinitionParameter] A formal computable definition of an
  OperationDefinitionParameter._();

  /// [OperationDefinitionParameter] A formal computable definition of an
  /// operation (on the RESTful interface) or a named query (using the search
  ///  interaction).
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
  /// [name] The name of used to identify the parameter.
  ///
  /// [nameElement] Extensions for name
  ///
  /// [use] Whether this is an input or an output parameter.
  ///
  /// [useElement] Extensions for use
  ///
  /// [min] The minimum number of times this parameter SHALL appear in the
  ///  request or response.
  ///
  /// [minElement] Extensions for min
  ///
  /// [max] The maximum number of times this element is permitted to appear in
  ///  the request or response.
  ///
  /// [maxElement] Extensions for max
  ///
  /// [documentation] Describes the meaning or use of this parameter.
  ///
  /// [documentationElement] Extensions for documentation
  ///
  /// [type] The type for this parameter.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [targetProfile] Used when the type is "Reference" or "canonical", and
  /// identifies a profile structure or implementation Guide that applies to the
  /// target of the reference this parameter refers to. If any profiles are
  /// specified, then the content must conform to at least one of them. The URL
  /// can be a local reference - to a contained StructureDefinition, or a
  /// reference to another StructureDefinition or Implementation Guide by a
  /// canonical URL. When an implementation guide is specified, the target
  /// resource SHALL conform to at least one profile defined in the
  ///  implementation guide.
  ///
  /// [searchType] How the parameter is understood as a search parameter. This
  ///  is only used if the parameter type is 'string'.
  ///
  /// [searchTypeElement] Extensions for searchType
  ///
  /// [binding] Binds to a value set if this parameter is coded (code, Coding,
  ///  CodeableConcept).
  ///
  /// [referencedFrom] Identifies other resource parameters within the
  ///  operation invocation that are expected to resolve to this resource.
  ///
  /// [part] The parts of a nested Parameter.
  factory OperationDefinitionParameter({
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

    /// [name] The name of used to identify the parameter.
    FhirCode? name,

    /// [nameElement] Extensions for name
    @JsonKey(name: '_name') PrimitiveElement? nameElement,

    /// [use] Whether this is an input or an output parameter.
    FhirCode? use,

    /// [useElement] Extensions for use
    @JsonKey(name: '_use') PrimitiveElement? useElement,

    /// [min] The minimum number of times this parameter SHALL appear in the
    ///  request or response.
    FhirInteger? min,

    /// [minElement] Extensions for min
    @JsonKey(name: '_min') PrimitiveElement? minElement,

    /// [max] The maximum number of times this element is permitted to appear in
    ///  the request or response.
    String? max,

    /// [maxElement] Extensions for max
    @JsonKey(name: '_max') PrimitiveElement? maxElement,

    /// [documentation] Describes the meaning or use of this parameter.
    String? documentation,

    /// [documentationElement] Extensions for documentation
    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,

    /// [type] The type for this parameter.
    FhirCode? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') PrimitiveElement? typeElement,

    /// [targetProfile] Used when the type is "Reference" or "canonical", and
    /// identifies a profile structure or implementation Guide that applies to the
    /// target of the reference this parameter refers to. If any profiles are
    /// specified, then the content must conform to at least one of them. The URL
    /// can be a local reference - to a contained StructureDefinition, or a
    /// reference to another StructureDefinition or Implementation Guide by a
    /// canonical URL. When an implementation guide is specified, the target
    /// resource SHALL conform to at least one profile defined in the
    ///  implementation guide.
    List<FhirCanonical>? targetProfile,

    /// [searchType] How the parameter is understood as a search parameter. This
    ///  is only used if the parameter type is 'string'.
    FhirCode? searchType,

    /// [searchTypeElement] Extensions for searchType
    @JsonKey(name: '_searchType') PrimitiveElement? searchTypeElement,

    /// [binding] Binds to a value set if this parameter is coded (code, Coding,
    ///  CodeableConcept).
    OperationDefinitionBinding? binding,

    /// [referencedFrom] Identifies other resource parameters within the
    ///  operation invocation that are expected to resolve to this resource.
    List<OperationDefinitionReferencedFrom>? referencedFrom,

    /// [part] The parts of a nested Parameter.
    @JsonKey(name: 'part') List<OperationDefinitionParameter>? part_,
  }) = _OperationDefinitionParameter;

  @override
  String get fhirType => 'OperationDefinitionParameter';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory OperationDefinitionParameter.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinitionParameter.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? OperationDefinitionParameter.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'OperationDefinitionParameter cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionParameter.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinitionParameterFromJson(json);

  /// Acts like a constructor, returns a [OperationDefinitionParameter], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory OperationDefinitionParameter.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$OperationDefinitionParameterFromJson(json);
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

/// [OperationDefinitionBinding] A formal computable definition of an
@freezed

/// [OperationDefinitionBinding] A formal computable definition of an
@freezed
class OperationDefinitionBinding extends BackboneElement
    with _$OperationDefinitionBinding {
  /// [OperationDefinitionBinding] A formal computable definition of an
  OperationDefinitionBinding._();

  /// [OperationDefinitionBinding] A formal computable definition of an
  /// operation (on the RESTful interface) or a named query (using the search
  ///  interaction).
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
  /// [strength] Indicates the degree of conformance expectations associated
  /// with this binding - that is, the degree to which the provided value set
  ///  must be adhered to in the instances.
  ///
  /// [strengthElement] Extensions for strength
  ///
  /// [valueSet] Points to the value set or external definition (e.g. implicit
  ///  value set) that identifies the set of codes to be used.
  factory OperationDefinitionBinding({
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

    /// [strength] Indicates the degree of conformance expectations associated
    /// with this binding - that is, the degree to which the provided value set
    ///  must be adhered to in the instances.
    FhirCode? strength,

    /// [strengthElement] Extensions for strength
    @JsonKey(name: '_strength') PrimitiveElement? strengthElement,

    /// [valueSet] Points to the value set or external definition (e.g. implicit
    ///  value set) that identifies the set of codes to be used.
    required FhirCanonical valueSet,
  }) = _OperationDefinitionBinding;

  @override
  String get fhirType => 'OperationDefinitionBinding';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory OperationDefinitionBinding.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinitionBinding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? OperationDefinitionBinding.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'OperationDefinitionBinding cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionBinding.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinitionBindingFromJson(json);

  /// Acts like a constructor, returns a [OperationDefinitionBinding], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory OperationDefinitionBinding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$OperationDefinitionBindingFromJson(json);
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

@freezed
@freezed
class OperationDefinitionReferencedFrom extends BackboneElement
    with _$OperationDefinitionReferencedFrom {
  OperationDefinitionReferencedFrom._();

  /// [OperationDefinitionReferencedFrom] A formal computable definition of an
  /// operation (on the RESTful interface) or a named query (using the search
  ///  interaction).
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
  /// [source] The name of the parameter or dot-separated path of parameter
  /// names pointing to the resource parameter that is expected to contain a
  ///  reference to this resource.
  ///
  /// [sourceElement] Extensions for source
  ///
  /// [sourceId] The id of the element in the referencing resource that is
  ///  expected to resolve to this resource.
  ///
  /// [sourceIdElement] Extensions for sourceId
  factory OperationDefinitionReferencedFrom({
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

    /// [source] The name of the parameter or dot-separated path of parameter
    /// names pointing to the resource parameter that is expected to contain a
    ///  reference to this resource.
    String? source,

    /// [sourceElement] Extensions for source
    @JsonKey(name: '_source') PrimitiveElement? sourceElement,

    /// [sourceId] The id of the element in the referencing resource that is
    ///  expected to resolve to this resource.
    String? sourceId,

    /// [sourceIdElement] Extensions for sourceId
    @JsonKey(name: '_sourceId') PrimitiveElement? sourceIdElement,
  }) = _OperationDefinitionReferencedFrom;

  @override
  String get fhirType => 'OperationDefinitionReferencedFrom';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory OperationDefinitionReferencedFrom.fromYaml(dynamic yaml) => yaml
          is String
      ? OperationDefinitionReferencedFrom.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? OperationDefinitionReferencedFrom.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'OperationDefinitionReferencedFrom cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory OperationDefinitionReferencedFrom.fromJson(
          Map<String, dynamic> json) =>
      _$OperationDefinitionReferencedFromFromJson(json);

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [OperationDefinitionOverload] A formal computable definition of an
@freezed

/// [OperationDefinitionOverload] A formal computable definition of an
@freezed
class OperationDefinitionOverload extends BackboneElement
    with _$OperationDefinitionOverload {
  /// [OperationDefinitionOverload] A formal computable definition of an
  OperationDefinitionOverload._();

  /// [OperationDefinitionOverload] A formal computable definition of an
  /// operation (on the RESTful interface) or a named query (using the search
  ///  interaction).
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
  /// [parameterName] Name of parameter to include in overload.
  ///
  /// [parameterNameElement] Extensions for parameterName
  ///
  /// [comment] Comments to go on overload.
  ///
  /// [commentElement] Extensions for comment
  factory OperationDefinitionOverload({
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

    /// [parameterName] Name of parameter to include in overload.
    List<String>? parameterName,

    /// [parameterNameElement] Extensions for parameterName
    @JsonKey(name: '_parameterName')
    List<PrimitiveElement>? parameterNameElement,

    /// [comment] Comments to go on overload.
    String? comment,

    /// [commentElement] Extensions for comment
    @JsonKey(name: '_comment') PrimitiveElement? commentElement,
  }) = _OperationDefinitionOverload;

  @override
  String get fhirType => 'OperationDefinitionOverload';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory OperationDefinitionOverload.fromYaml(dynamic yaml) => yaml is String
      ? OperationDefinitionOverload.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? OperationDefinitionOverload.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'OperationDefinitionOverload cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory OperationDefinitionOverload.fromJson(Map<String, dynamic> json) =>
      _$OperationDefinitionOverloadFromJson(json);

  /// Acts like a constructor, returns a [OperationDefinitionOverload], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory OperationDefinitionOverload.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$OperationDefinitionOverloadFromJson(json);
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
