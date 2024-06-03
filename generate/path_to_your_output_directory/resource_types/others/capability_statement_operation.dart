import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CapabilityStatement_Operation] A Capability Statement documents a set
/// of capabilities (behaviors) of a FHIR Server or Client for a particular
/// version of FHIR that may be used as a statement of actual server
/// functionality or a statement of required or desired server implementation.

@freezed
class CapabilityStatement_Operation with _$CapabilityStatement_Operation {
  const CapabilityStatement_Operation._();

  const factory CapabilityStatement_Operation({
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
/// [name] The name of the operation or query. For an operation, this name
/// is prefixed with $ and used in the URL. For a query, this is the name used
/// in the _query parameter when the query is called. This SHOULD be the same
/// as the OperationDefinition.code of the defining OperationDefinition.
/// However, it can sometimes differ if necessary to disambiguate when a server
/// supports multiple OperationDefinition that happen to share the same code.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [definition] Where the formal definition can be found. If a server
/// references the base definition of an Operation (i.e. from the specification
/// itself such as
/// ```http://hl7.org/fhir/OperationDefinition/ValueSet-expand```), that means
/// it supports the full capabilities of the operation - e.g. both GET and POST
/// invocation.  If it only supports a subset, it must define its own custom
/// [OperationDefinition](operationdefinition.html#) with a 'base' of the
/// original OperationDefinition.  The custom definition would describe the
/// specific subset of functionality supported.

    @JsonKey(name: 'definition') FhirCanonical? definition,
/// [documentation] Documentation that describes anything special about the
/// operation behavior, possibly detailing different behavior for system, type
/// and instance-level invocation of the operation.

    @JsonKey(name: 'documentation') FhirMarkdown? documentation,
/// [_documentation] Extensions for documentation

    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
  }) = _$CapabilityStatement_Operation;

  @override
  String get fhirType => 'CapabilityStatement_Operation';

  factory CapabilityStatement_Operation.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_OperationFromJson(json);

  factory CapabilityStatement_Operation.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatement_Operation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatement_Operation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatement_Operation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CapabilityStatement_Operation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatement_OperationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
