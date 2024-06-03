import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Identifier] An identifier - identifies some entity uniquely and
/// unambiguously. Typically this is used for business identifiers.

@freezed
class Identifier with _$Identifier {
  const Identifier._();

  const factory Identifier({
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
/// [use] The purpose of this identifier.

    @JsonKey(name: 'use') dynamic? use,
/// [_use] Extensions for use

    @JsonKey(name: '_use') PrimitiveElement? useElement,
/// [type] A coded type for the identifier that can be used to determine
/// which identifier to use for a specific purpose.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [system] Establishes the namespace for the value - that is, an absolute
/// URL that describes a set values that are unique.

    @JsonKey(name: 'system') FhirUri? system,
/// [_system] Extensions for system

    @JsonKey(name: '_system') PrimitiveElement? systemElement,
/// [value] The portion of the identifier typically relevant to the user
/// and which is unique within the context of the system.

    @JsonKey(name: 'value') String? value,
/// [_value] Extensions for value

    @JsonKey(name: '_value') PrimitiveElement? valueElement,
/// [period] Time period during which identifier is/was valid for use.

    @JsonKey(name: 'period') Period? period,
/// [assigner] Organization that issued/manages the identifier.

    @JsonKey(name: 'assigner') Reference? assigner,
  }) = _$Identifier;

  @override
  String get fhirType => 'Identifier';

  factory Identifier.fromJson(Map<String, dynamic> json) =>
      _$IdentifierFromJson(json);

  factory Identifier.fromYaml(dynamic yaml) => yaml is String
      ? Identifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Identifier.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Identifier cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Identifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$IdentifierFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
