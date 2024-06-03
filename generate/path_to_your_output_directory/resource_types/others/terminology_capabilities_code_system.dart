import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [TerminologyCapabilities_CodeSystem] A TerminologyCapabilities resource
/// documents a set of capabilities (behaviors) of a FHIR Terminology Server
/// that may be used as a statement of actual server functionality or a
/// statement of required or desired server implementation.

@freezed
class TerminologyCapabilities_CodeSystem with _$TerminologyCapabilities_CodeSystem {
  const TerminologyCapabilities_CodeSystem._();

  const factory TerminologyCapabilities_CodeSystem({
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
/// [uri] Canonical identifier for the code system, represented as a URI.

    @JsonKey(name: 'uri') FhirCanonical? uri,
/// [version] For the code system, a list of versions that are supported by
/// the server.

    @JsonKey(name: 'version') List<List<TerminologyCapabilities_Version>>? version,
/// [content] The extent of the content of the code system (the concepts
/// and codes it defines) are represented in this resource instance.

    @JsonKey(name: 'content') FhirCode? content,
/// [_content] Extensions for content

    @JsonKey(name: '_content') PrimitiveElement? contentElement,
/// [subsumption] True if subsumption is supported for this version of the
/// code system.

    @JsonKey(name: 'subsumption') FhirBoolean? subsumption,
/// [_subsumption] Extensions for subsumption

    @JsonKey(name: '_subsumption') PrimitiveElement? subsumptionElement,
  }) = _$TerminologyCapabilities_CodeSystem;

  @override
  String get fhirType => 'TerminologyCapabilities_CodeSystem';

  factory TerminologyCapabilities_CodeSystem.fromJson(Map<String, dynamic> json) =>
      _$TerminologyCapabilities_CodeSystemFromJson(json);

  factory TerminologyCapabilities_CodeSystem.fromYaml(dynamic yaml) => yaml is String
      ? TerminologyCapabilities_CodeSystem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilities_CodeSystem.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilities_CodeSystem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TerminologyCapabilities_CodeSystem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TerminologyCapabilities_CodeSystemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
