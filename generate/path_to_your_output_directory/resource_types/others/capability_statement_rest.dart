import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CapabilityStatement_Rest] A Capability Statement documents a set of
/// capabilities (behaviors) of a FHIR Server or Client for a particular
/// version of FHIR that may be used as a statement of actual server
/// functionality or a statement of required or desired server implementation.

@freezed
class CapabilityStatement_Rest with _$CapabilityStatement_Rest {
  const CapabilityStatement_Rest._();

  const factory CapabilityStatement_Rest({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [mode] Identifies whether this portion of the statement is describing
/// the ability to initiate or receive restful operations.

    @JsonKey(name: 'mode') FhirCode? mode,
/// [_mode] Extensions for mode

    @JsonKey(name: '_mode') PrimitiveElement? modeElement,
/// [documentation] Information about the system's restful capabilities
/// that apply across all applications, such as security.

    @JsonKey(name: 'documentation') FhirMarkdown? documentation,
/// [_documentation] Extensions for documentation

    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
/// [security] Information about security implementation from an interface
/// perspective - what a client needs to know.

    @JsonKey(name: 'security') CapabilityStatement_Security? security,
/// [resource] A specification of the restful capabilities of the solution
/// for a specific resource type.

    @JsonKey(name: 'resource') List<List<CapabilityStatement_Resource>>? resource,
/// [interaction] A specification of restful operations supported by the
/// system.

    @JsonKey(name: 'interaction') List<List<CapabilityStatement_Interaction1>>? interaction,
/// [searchParam] Search parameters that are supported for searching all
/// resources for implementations to support and/or make use of - either
/// references to ones defined in the specification, or additional ones defined
/// for/by the implementation. This is only for searches executed against the
/// system-level endpoint.

    @JsonKey(name: 'searchParam') List<List<CapabilityStatement_SearchParam>>? searchParam,
/// [operation] Definition of an operation or a named query together with
/// its parameters and their meaning and type.

    @JsonKey(name: 'operation') List<List<CapabilityStatement_Operation>>? operation,
/// [compartment] An absolute URI which is a reference to the definition of
/// a compartment that the system supports. The reference is to a
/// CompartmentDefinition resource by its canonical URL .

    @JsonKey(name: 'compartment') List<List<FhirCanonical>>? compartment,
  }) = _$CapabilityStatement_Rest;

  @override
  String get fhirType => 'CapabilityStatement_Rest';

  factory CapabilityStatement_Rest.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_RestFromJson(json);

  factory CapabilityStatement_Rest.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatement_Rest.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatement_Rest.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatement_Rest cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CapabilityStatement_Rest.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatement_RestFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
