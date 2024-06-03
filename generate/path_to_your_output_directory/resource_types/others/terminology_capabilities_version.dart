import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [TerminologyCapabilities_Version] A TerminologyCapabilities resource
/// documents a set of capabilities (behaviors) of a FHIR Terminology Server
/// that may be used as a statement of actual server functionality or a
/// statement of required or desired server implementation.

@freezed
class TerminologyCapabilities_Version with _$TerminologyCapabilities_Version {
  const TerminologyCapabilities_Version._();

  const factory TerminologyCapabilities_Version({
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
/// [code] For version-less code systems, there should be a single version
/// with no identifier.

    @JsonKey(name: 'code') String? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [isDefault] If this is the default version for this code system.

    @JsonKey(name: 'isDefault') FhirBoolean? isDefault,
/// [_isDefault] Extensions for isDefault

    @JsonKey(name: '_isDefault') PrimitiveElement? isDefaultElement,
/// [compositional] If the compositional grammar defined by the code system
/// is supported.

    @JsonKey(name: 'compositional') FhirBoolean? compositional,
/// [_compositional] Extensions for compositional

    @JsonKey(name: '_compositional') PrimitiveElement? compositionalElement,
/// [language] Language Displays supported.

    @JsonKey(name: 'language') List<List<FhirCode>>? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') List<PrimitiveElement>? languageElement,
/// [filter] Filter Properties supported.

    @JsonKey(name: 'filter') List<List<TerminologyCapabilities_Filter>>? filter,
/// [property] Properties supported for $lookup.

    @JsonKey(name: 'property') List<List<FhirCode>>? property,
/// [_property] Extensions for property

    @JsonKey(name: '_property') List<PrimitiveElement>? propertyElement,
  }) = _$TerminologyCapabilities_Version;

  @override
  String get fhirType => 'TerminologyCapabilities_Version';

  factory TerminologyCapabilities_Version.fromJson(Map<String, dynamic> json) =>
      _$TerminologyCapabilities_VersionFromJson(json);

  factory TerminologyCapabilities_Version.fromYaml(dynamic yaml) => yaml is String
      ? TerminologyCapabilities_Version.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TerminologyCapabilities_Version.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TerminologyCapabilities_Version cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TerminologyCapabilities_Version.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TerminologyCapabilities_VersionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
