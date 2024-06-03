/// /// [CapabilityStatement_Resource] A Capability Statement documents a set
/// of capabilities (behaviors) of a FHIR Server or Client for a particular
/// version of FHIR that may be used as a statement of actual server
/// functionality or a statement of required or desired server implementation.

@freezed
class CapabilityStatement_Resource with _$CapabilityStatement_Resource {
  const CapabilityStatement_Resource._();

  const factory CapabilityStatement_Resource({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// /// [type] A type of resource exposed via the restful interface.

    @JsonKey(name: 'type') FhirCode? type,
/// /// [_type] Extensions for type

    @JsonKey(name: '_type') FhirElement? typeElement,
/// /// [profile] A system-wide profile that is applied across *all* instances
/// of the resource supported by the system. For example, if declared on
/// Observation, this profile is the "superset" of capabilities for laboratory
/// *and* vitals *and* other domains. See further discussion in [Using
/// Profiles](profiling.html#profile-uses).

    @JsonKey(name: 'profile') FhirCanonical? profile,
/// /// [supportedProfile] A list of profiles representing different use cases
/// the system hosts/produces. A supported profile is a statement about the
/// functionality of the data and services provided by the server (or the
/// client) for supported use cases. For example, a system can define and
/// declare multiple Observation profiles for laboratory observations, vital
/// sign observations, etc. By declaring supported profiles, systems provide a
/// way to determine whether individual resources are conformant. See further
/// discussion in [Using Profiles](profiling.html#profile-uses).

    @JsonKey(name: 'supportedProfile') List<List<FhirCanonical>>? supportedProfile,
/// /// [documentation] Additional information about the resource type used by
/// the system.

    @JsonKey(name: 'documentation') FhirMarkdown? documentation,
/// /// [_documentation] Extensions for documentation

    @JsonKey(name: '_documentation') FhirElement? documentationElement,
/// /// [interaction] Identifies a restful operation supported by the solution.

    @JsonKey(name: 'interaction') List<List<CapabilityStatement_Interaction>>? interaction,
/// /// [versioning] This field is set to no-version to specify that the system
/// does not support (server) or use (client) versioning for this resource
/// type. If this has some other value, the server must at least correctly
/// track and populate the versionId meta-property on resources. If the value
/// is 'versioned-update', then the server supports all the versioning
/// features, including using e-tags for version integrity in the API.

    @JsonKey(name: 'versioning') FhirCode? versioning,
/// /// [_versioning] Extensions for versioning

    @JsonKey(name: '_versioning') FhirElement? versioningElement,
/// /// [readHistory] A flag for whether the server is able to return past
/// versions as part of the vRead operation.

    @JsonKey(name: 'readHistory') FhirBoolean? readHistory,
/// /// [_readHistory] Extensions for readHistory

    @JsonKey(name: '_readHistory') FhirElement? readHistoryElement,
/// /// [updateCreate] A flag to indicate that the server allows or needs to
/// allow the client to create new identities on the server (that is, the
/// client PUTs to a location where there is no existing resource). Allowing
/// this operation means that the server allows the client to create new
/// identities on the server.

    @JsonKey(name: 'updateCreate') FhirBoolean? updateCreate,
/// /// [_updateCreate] Extensions for updateCreate

    @JsonKey(name: '_updateCreate') FhirElement? updateCreateElement,
/// /// [conditionalCreate] A flag that indicates that the server supports
/// conditional create.

    @JsonKey(name: 'conditionalCreate') FhirBoolean? conditionalCreate,
/// /// [_conditionalCreate] Extensions for conditionalCreate

    @JsonKey(name: '_conditionalCreate') FhirElement? conditionalCreateElement,
/// /// [conditionalRead] A code that indicates how the server supports
/// conditional read.

    @JsonKey(name: 'conditionalRead') FhirCode? conditionalRead,
/// /// [_conditionalRead] Extensions for conditionalRead

    @JsonKey(name: '_conditionalRead') FhirElement? conditionalReadElement,
/// /// [conditionalUpdate] A flag that indicates that the server supports
/// conditional update.

    @JsonKey(name: 'conditionalUpdate') FhirBoolean? conditionalUpdate,
/// /// [_conditionalUpdate] Extensions for conditionalUpdate

    @JsonKey(name: '_conditionalUpdate') FhirElement? conditionalUpdateElement,
/// /// [conditionalPatch] A flag that indicates that the server supports
/// conditional patch.

    @JsonKey(name: 'conditionalPatch') FhirBoolean? conditionalPatch,
/// /// [_conditionalPatch] Extensions for conditionalPatch

    @JsonKey(name: '_conditionalPatch') FhirElement? conditionalPatchElement,
/// /// [conditionalDelete] A code that indicates how the server supports
/// conditional delete.

    @JsonKey(name: 'conditionalDelete') FhirCode? conditionalDelete,
/// /// [_conditionalDelete] Extensions for conditionalDelete

    @JsonKey(name: '_conditionalDelete') FhirElement? conditionalDeleteElement,
/// /// [referencePolicy] A set of flags that defines how references are
/// supported.

    @JsonKey(name: 'referencePolicy') List<List<FhirCode>>? referencePolicy,
/// /// [_referencePolicy] Extensions for referencePolicy

    @JsonKey(name: '_referencePolicy') List<FhirElement>? referencePolicyElement,
/// /// [searchInclude] A list of _include values supported by the server.

    @JsonKey(name: 'searchInclude') List<List<String>>? searchInclude,
/// /// [_searchInclude] Extensions for searchInclude

    @JsonKey(name: '_searchInclude') List<FhirElement>? searchIncludeElement,
/// /// [searchRevInclude] A list of _revinclude (reverse include) values
/// supported by the server.

    @JsonKey(name: 'searchRevInclude') List<List<String>>? searchRevInclude,
/// /// [_searchRevInclude] Extensions for searchRevInclude

    @JsonKey(name: '_searchRevInclude') List<FhirElement>? searchRevIncludeElement,
/// /// [searchParam] Search parameters for implementations to support and/or
/// make use of - either references to ones defined in the specification, or
/// additional ones defined for/by the implementation.

    @JsonKey(name: 'searchParam') List<List<CapabilityStatement_SearchParam>>? searchParam,
/// /// [operation] Definition of an operation or a named query together with
/// its parameters and their meaning and type. Consult the definition of the
/// operation for details about how to invoke the operation, and the
/// parameters.

    @JsonKey(name: 'operation') List<List<CapabilityStatement_Operation>>? operation,
  }) = _$CapabilityStatement_Resource;

  @override
  String get fhirType => 'CapabilityStatement_Resource';

  factory CapabilityStatement_Resource.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_ResourceFromJson(json);

  factory CapabilityStatement_Resource.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatement_Resource.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatement_Resource.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatement_Resource cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CapabilityStatement_Resource.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatement_ResourceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
